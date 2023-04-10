import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'pokedex_state.dart';

class PokedexCubit extends Cubit<PokedexState> {
  PokedexCubit() : super(PokedexFetch());
}
