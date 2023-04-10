import 'package:flutter_timer/scenes/pokedex/utils/pokemon_element.dart';

class PokemonList {
  final int id;
  final String name;
  final String? image;
  final List<ElementType> element;

  PokemonList(
      {required this.id,
      required this.name,
      this.image,
      required this.element});
}
