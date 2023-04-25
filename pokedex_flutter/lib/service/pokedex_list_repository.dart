import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/pokedex_model.dart';

class PokedexListRepository {
  Future<List<PokedexList>> fetchPokedexList() async {
    const baseURL = 'https://pokeapi.co/api/v2/pokemon';
    final url = Uri.parse(baseURL);
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as List;
      final result = json.map((result) {
        return PokedexList.fromJson(result);
      }).toList();
      return result;
    } else {
      throw "Something went wrong! Code: ${response.statusCode}";
    }
  }
}
