import 'package:flutter_timer/utils/pokemon_element.dart';

class Pokemon {
  String name;
  int id;
  double? height;
  double? weight;
  List<Ability>? abilities;
  List<Move>? moves;
  List<ElementType> types;
  ImageType image;

  Pokemon({
    required this.name,
    required this.id,
    required this.image,
    required this.types,
    this.height,
    this.weight,
    this.abilities,
    this.moves,
  });

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    return Pokemon(
      name: json['name'],
      id: json['id'],
      height: json['height'].toDouble(),
      weight: json['weight'].toDouble(),
      abilities: (json['abilities'] as List<dynamic>)
          .map((abilityJson) => Ability.fromJson(abilityJson))
          .toList(),
      moves: (json['moves'] as List<dynamic>)
          .map((moveJson) => Move.fromJson(moveJson))
          .toList(),
      types: (json['types'] as List<dynamic>)
          .map((typeJson) => elementTypeFromString(typeJson['type']['name']))
          .toList(),
      image: ImageType.fromJson(json['sprites']),
    );
  }

  static ElementType elementTypeFromString(String typeString) {
    switch (typeString) {
      case 'fire':
        return ElementType.FIRE;
      case 'water':
        return ElementType.WATER;
      case 'electric':
        return ElementType.ELECTRIC;
      case 'grass':
        return ElementType.GRASS;
      case 'ice':
        return ElementType.ICE;
      case 'fighting':
        return ElementType.FIGHTING;
      case 'poison':
        return ElementType.POISON;
      case 'ground':
        return ElementType.GROUND;
      case 'flying':
        return ElementType.FLYING;
      case 'psychic':
        return ElementType.PSYCHIC;
      case 'bug':
        return ElementType.BUG;
      case 'rock':
        return ElementType.ROCK;
      case 'ghost':
        return ElementType.GHOST;
      case 'dragon':
        return ElementType.DRAGON;
      case 'dark':
        return ElementType.DARK;
      case 'steel':
        return ElementType.STEEL;
      case 'fairy':
        return ElementType.FAIRY;
      default:
        return ElementType.NORMAL;
    }
  }
}

class Ability {
  final String? name;
  final String? description;

  Ability({
    this.name,
    this.description,
  });

  factory Ability.fromJson(Map<String, dynamic> json) {
    return Ability(
      name: json['name'],
      description: json['description'],
    );
  }
}

class Move {
  final String? name;
  final String? description;

  Move({
    this.name,
    this.description,
  });

  factory Move.fromJson(Map<String, dynamic> json) {
    return Move(
      name: json['name'],
      description: json['description'],
    );
  }
}

class ImageType {
  final String? male;
  final String? female;
  final String? shinyMale;
  final String? shinyFemale;

  ImageType({
    this.male,
    this.female,
    this.shinyMale,
    this.shinyFemale,
  });

  factory ImageType.fromJson(Map<String, dynamic> json) {
    return ImageType(
      male: json['front_default'],
      female: json['front_female'],
      shinyMale: json['front_shiny'],
      shinyFemale: json['front_shiny_female'],
    );
  }
}
