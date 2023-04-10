import 'package:flutter/material.dart';
import 'package:flutter_timer/scenes/pokedex/view/components/pokedex_list_widget.dart';

import '../utils/pokemon_element.dart';
import '../utils/pokemon_list.dart';

class Pokedex extends StatelessWidget {
  final List<PokemonList> _dados = [
    PokemonList(
        id: 1,
        name: 'Bulbasaur',
        element: [ElementType.GRASS, ElementType.POISON]),
    PokemonList(
        id: 2,
        name: 'Squirtle',
        element: [ElementType.WATER, ElementType.PSYCHIC]),
    PokemonList(
        id: 3,
        name: 'Charmander',
        element: [ElementType.FIRE, ElementType.DRAGON]),
    PokemonList(
        id: 4,
        name: 'Pikachu',
        element: [ElementType.ELECTRIC, ElementType.STEEL]),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pokedex'),
      ),
      body: ListView(
        children: _dados.map((pokemon) {
          return PokedexList(pokemon: pokemon);
        }).toList(),
      ),
    );
  }
}
