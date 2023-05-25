import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_timer/utils/pokemon_element.dart';

import '../../../utils/pokemon.dart';

class PokemonImage extends StatelessWidget {
  final Pokemon pokemon;

  PokemonImage({required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 126,
      height: 102,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          color: pokemon.types.first.typeColor),
      child: Stack(
        children: [
          SvgPicture.asset(
            pokemon.types.first.image,
            semanticsLabel: 'Element type image',
            width: 94,
            height: 94,
          ),
          Image.network(
            pokemon.image.male ?? '',
            width: 94,
            height: 94,
          ),
        ],
      ),
    );
  }
}
