import 'package:flutter/material.dart';
import 'package:flutter_timer/scenes/pokedex/widgets/pokedex_tag_widget.dart';
import 'package:flutter_timer/utils/pokemon_element.dart';

import '../../../utils/pokemon.dart';
import 'pokemon_image_widget.dart';

class PokedexList extends StatelessWidget {
  Pokemon pokemon;

  PokedexList({required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          color: pokemon.types.first.backgroundColor),
      margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.fromLTRB(16, 8, 12, 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    formattedTitle(pokemon.id),
                    style: TextStyle(
                      fontFamily: 'poppins',
                      fontSize: 12.0,
                    ),
                  ),
                  Text(
                    pokemon.name.toUpperCase(),
                    style: TextStyle(
                      fontFamily: 'poppins',
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  Row(
                    children: [
                      for (ElementType element in pokemon.types)
                        PokedexTag(
                          element: element,
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          PokemonImage(pokemon: pokemon),
        ],
      ),
    );
  }
}

extension PokedexListViewExtension on PokedexList {
  String formattedTitle(int pokemon_id) {
    String id = pokemon_id.toString().padLeft(3, '0');
    return 'Nº$id';
  }
}
