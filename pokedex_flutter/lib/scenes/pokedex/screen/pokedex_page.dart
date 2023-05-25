import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_timer/scenes/pokedex/cubit/pokedex_cubit.dart';
import 'package:flutter_timer/scenes/pokedex/screen/select_type_page.dart';
import 'package:flutter_timer/scenes/pokedex/widgets/pokedex_list_widget.dart';
import 'package:flutter_timer/utils/pokemon.dart';

import '../widgets/filter_button_widget.dart';

class Pokedex extends StatefulWidget {
  @override
  State<Pokedex> createState() => _PokedexState();
}

class _PokedexState extends State<Pokedex> {
  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final cubit = context.read<PokedexListCubit>();
      cubit.fetchPokedex();
    });
    scrollController.addListener(_scrollListener);
  }

  void _scrollListener() {
    if (scrollController.position.pixels ==
        scrollController.position.maxScrollExtent) {
      final cubit = context.read<PokedexListCubit>();
      cubit.fetchNextPage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pokedex'),
      ),
      body: BlocBuilder<PokedexListCubit, PokedexListState>(
          builder: (context, state) {
        if (state is InitialPokedex || state is LoadingPokedex) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is ResultPokedex) {
          final pokemons = state.pokemons;
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: ListView.builder(
                  controller: scrollController,
                  itemCount: pokemons.length + 1,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FilterButton(
                            title: 'Todos os tipos',
                            onButtonPressed: () async {
                              final result = await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  fullscreenDialog: true,
                                  builder: (context) => PokemonTypesList(),
                                ),
                              );
                              if (result != null) {
                                BlocProvider.of<PokedexListCubit>(context)
                                    .filterPokedex(result);
                              }
                            },
                          ),
                          FilterButton(
                            title: 'Menor número',
                            onButtonPressed: () {},
                          ),
                        ],
                      );
                    } else {
                      final pokemon = pokemons[index - 1];
                      final pokemonCard = Pokemon(
                        name: pokemon.name,
                        id: pokemon.id,
                        image: pokemon.image,
                        types: pokemon.types,
                      );
                      return PokedexList(pokemon: pokemonCard);
                    }
                  },
                ),
              ),
            ],
          );
        } else if (state is ErrorPokedex) {
          return Center(child: Text(state.message));
        }
        return Center(child: Text(state.toString()));
      }),
    );
  }
}
