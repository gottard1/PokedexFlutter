import 'dart:core';
import 'package:equatable/equatable.dart';

class PokedexResult extends Equatable {
  PokedexResult({
    required this.name,
    required this.url,
  });

  final String name;
  final String url;

  @override
  List<Object> get props => [name, url];
}

class PokedexList extends Equatable {
  PokedexList({
    required this.count,
    this.next,
    this.previous,
    required this.results,
  });

  final int count;
  final String? next;
  final String? previous;
  final List<PokedexResult> results;

  @override
  List<Object?> get props => [];
}
