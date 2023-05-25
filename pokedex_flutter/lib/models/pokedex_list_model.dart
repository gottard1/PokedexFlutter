import 'package:flutter_timer/models/pokedex_result_model.dart';

class PokedexList {
  final int count;
  final String? next;
  final String? previous;
  final List<PokedexResult> results;

  PokedexList({
    required this.count,
    this.next,
    this.previous,
    required this.results,
  });

  factory PokedexList.fromJson(Map<String, dynamic> json) {
    final resultsJson = json['results'] as List<dynamic>;
    final results = resultsJson
        .map((resultJson) => PokedexResult.fromJson(resultJson))
        .toList();
    return PokedexList(
      count: json['count'],
      next: json['next'],
      previous: json['previous'],
      results: results,
    );
  }
}
