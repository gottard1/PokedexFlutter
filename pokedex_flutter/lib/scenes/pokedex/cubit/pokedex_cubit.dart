import 'package:bloc/bloc.dart';
import 'package:flutter_timer/service/pokedex_list_repository.dart';
import 'package:flutter_timer/utils/pokemon_element.dart';

import '../../../utils/pokemon.dart';

part 'pokedex_state.dart';

class PokedexListCubit extends Cubit<PokedexListState> {
  final PokedexListRepository _repository;

  List<Pokemon> response = [];

  PokedexListCubit(this._repository) : super(InitialPokedex());

  Future<List<Pokemon>> filterPokedex([ElementType? type]) async {
    emit(LoadingPokedex());
    try {
      final filteredList = response
          .where(
            (pokemon) => pokemon.types.contains(type),
          )
          .toList();

      emit(ResultPokedex(filteredList));
    } catch (error) {
      emit(ErrorPokedex(error.toString()));
    }
    return [];
  }

  Future<List<Pokemon>> fetchPokedex() async {
    emit(LoadingPokedex());
    try {
      response = await _repository.fetchPokedexList();
      emit(ResultPokedex(response));
    } catch (error) {
      emit(ErrorPokedex(error.toString()));
    }
    return [];
  }

  Future<void> fetchNextPage() async {
    var nextPageData = await _repository.fetchNextPage();

    for (var item in nextPageData) {
      if (!response.contains(item)) {
        response.add(item);
      }
    }

    emit(ResultPokedex(response));
  }
}
