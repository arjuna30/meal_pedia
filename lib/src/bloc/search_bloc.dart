import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meal_pedia/src/model/meal.dart';
import 'package:meal_pedia/src/repository/meal_repository.dart';
import 'package:meta/meta.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  static SearchBloc create(BuildContext context) => SearchBloc();
  final _mealRepository = MealRepository();
  SearchBloc() : super(SearchInitial()) {
    on<SearchMealEvent>(_onSearchMeal);
  }

  Future<void> _onSearchMeal(SearchMealEvent event, Emitter emit) async {
    try {
      emit(SearchMealLoading());
      final response = await _mealRepository.searchMeal(event.text);
      emit(SearchMealSuccess(event.text, response));
    } catch (e) {
      emit(SearchMealFailed());
    }
  }
}
