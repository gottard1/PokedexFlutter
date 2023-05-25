import 'dart:convert';

import 'package:flutter_timer/utils/pokemon.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import '../models/pokedex_list_model.dart';

class PokedexListRepository {
  final List<Pokemon> pokemons = [];
  late String? _nextPage;

  Future<List<Pokemon>> fetchPokedexList() async {
    const baseURL = 'https://pokeapi.co/api/v2/pokemon';
    final url = Uri.parse(baseURL);
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      final pokedexList = PokedexList.fromJson(json);

      _nextPage = pokedexList.next;

      final List<Future<Response>> selectedURL = [];

      for (final pokemon in pokedexList.results) {
        final url = Uri.parse(pokemon.url);
        final call = http.get(url);
        selectedURL.add(call);
      }

      final call = await Future.wait(selectedURL);

      for (final pokemonResponse in call) {
        final pokemonJson = jsonDecode(pokemonResponse.body);
        final pokemon = Pokemon.fromJson(pokemonJson);

        final pokebola = Pokemon(
          name: pokemon.name,
          id: pokemon.id,
          image: ImageType(male: pokemon.image.male),
          types: pokemon.types,
        );
        pokemons.add(pokebola);
      }

      return pokemons;
    } else {
      throw "Something went wrong! Code: ${response.statusCode}";
    }
  }

  Future<List<Pokemon>> fetchNextPage() async {
    final url = Uri.parse(_nextPage ?? "");
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      final pokedexList = PokedexList.fromJson(json);

      _nextPage = pokedexList.next;

      final List<Future<Response>> selectedURL = [];

      for (final pokemon in pokedexList.results) {
        final url = Uri.parse(pokemon.url);
        final call = http.get(url);
        selectedURL.add(call);
      }

      final call = await Future.wait(selectedURL);

      for (final pokemonResponse in call) {
        final pokemonJson = jsonDecode(pokemonResponse.body);
        final pokemon = Pokemon.fromJson(pokemonJson);

        final pokebola = Pokemon(
          name: pokemon.name,
          id: pokemon.id,
          image: ImageType(male: pokemon.image.male),
          types: pokemon.types,
        );
        pokemons.add(pokebola);
      }

      return pokemons;
    } else {
      throw "Something went wrong! Code: ${response.statusCode}";
    }
  }
}
