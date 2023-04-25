import 'package:bloc/bloc.dart';
import 'package:flutter_timer/models/pokedex_model.dart';
import 'package:flutter_timer/service/pokedex_list_repository.dart';

part 'pokedex_state.dart';

class PokedexListCubit extends Cubit<PokedexListState> {
  final PokedexListRepository _repository;
  PokedexListCubit(this._repository) : super(InitialPokedex());

  Future<void> fetchPokedex() async {
    emit(LoadingPokedex());
    try {
      final response = await _repository.fetchPokedexList();
      emit(ResultPokedex(response));
    } catch (error) {
      emit(ErrorPokedex(error.toString()));
    }
  }
}
