import 'dart:core';

class PokedexList {
  final int count;
  final String next;
  final String previous;
  final List<PokedexResult> results;

  PokedexList({
    required this.count,
    required this.next,
    required this.previous,
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

class PokedexResult {
  final String name;
  final String url;

  PokedexResult({
    required this.name,
    required this.url,
  });

  factory PokedexResult.fromJson(Map<String, dynamic> json) {
    return PokedexResult(
      name: json['name'],
      url: json['url'],
    );
  }
}
