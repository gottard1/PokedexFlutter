import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_timer/scenes/pokedex/cubit/pokedex_cubit.dart';
import 'package:flutter_timer/scenes/pokedex/widgets/pokedex_list_widget.dart';
import 'package:flutter_timer/utils/pokemon_element.dart';
import 'package:flutter_timer/utils/pokemon_list.dart';

class Pokedex extends StatefulWidget {
  @override
  State<Pokedex> createState() => _PokedexState();
}

class _PokedexState extends State<Pokedex> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final cubit = context.read<PokedexListCubit>();
      cubit.fetchPokedex();
    });
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
          return ListView.builder(
              itemCount: pokemons.length,
              itemBuilder: (context, index) {
                final pokemon = PokemonList(
                    id: 2, name: 'Bulbasaur', element: [ElementType.GRASS]);
                return PokedexList(pokemon: pokemon);
              });
        } else if (state is ErrorPokedex) {
          return Center(child: Text(state.message));
        }
        return Center(child: Text(state.toString()));
      }),
    );
  }
}
