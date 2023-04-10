part of 'pokedex_cubit.dart';

abstract class PokedexState extends Equatable {
  PokedexState();

  @override
  List<Object> get props => [];
}

class PokedexInitial extends PokedexState {}

class PokedexError extends PokedexState {
  final String? error;

  PokedexError({this.error});
}

class PokedexFetch extends PokedexState {}
