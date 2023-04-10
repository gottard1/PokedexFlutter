import 'package:flutter/material.dart';
import 'package:flutter_timer/scenes/pokedex/view/components/pokedex_list_view.dart';

import '../utils/pokemon_element.dart';
import '../utils/pokemon_list.dart';

class Pokedex extends StatelessWidget {
  final List<PokemonList> _dados = [
    PokemonList(id: 1, name: 'Bulbasaur', element: ElementType.GRASS),
    PokemonList(id: 2, name: 'Squirtle', element: ElementType.WATER),
    PokemonList(id: 3, name: 'Charmander', element: ElementType.FIRE),
    PokemonList(id: 4, name: 'Pikachu', element: ElementType.ELECTRIC),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pokedex'),
      ),
      body: ListView(
        children: _dados.map((pokemon) {
          return PokedexListView(pokemon: pokemon);
        }).toList(),
      ),
    );
  }
}
