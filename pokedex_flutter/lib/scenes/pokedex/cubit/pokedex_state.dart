part of 'pokedex_cubit.dart';

abstract class PokedexListState {}

class InitialPokedex extends PokedexListState {}

class LoadingPokedex extends PokedexListState {}

class ErrorPokedex extends PokedexListState {
  final String message;
  ErrorPokedex(this.message);
}

class ResultPokedex extends PokedexListState {
  List<PokedexList> pokemons;
  ResultPokedex(this.pokemons);
}
