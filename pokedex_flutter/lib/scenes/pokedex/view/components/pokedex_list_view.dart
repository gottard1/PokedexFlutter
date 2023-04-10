import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_timer/scenes/pokedex/utils/pokemon_element.dart';
import 'package:flutter_timer/scenes/pokedex/utils/pokemon_list.dart';
import 'package:flutter_timer/scenes/pokedex/view/components/pokedex_tag_view.dart';

class PokedexListView extends StatelessWidget {
  final PokemonList pokemon;

  PokedexListView({required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          color: pokemon.element.backgroundColor),
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
                  PokedexTagListView(
                    element: pokemon.element,
                  )
                ],
              ),
            ),
          ),
          Container(
              width: 126,
              height: 102,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  color: pokemon.element.typeColor),
              child: Stack(
                children: [
                  SvgPicture.asset(
                    pokemon.element.image,
                    semanticsLabel: 'Element type image',
                    width: 94,
                    height: 94,
                  ),
                ],
              )),
        ],
      ),
    );
  }
}

extension PokedexListViewExtension on PokedexListView {
  String formattedTitle(int pokemon_id) {
    String id = pokemon_id.toString().padLeft(3, '0');
    return 'Nº$id';
  }
}
