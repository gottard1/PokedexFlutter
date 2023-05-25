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
