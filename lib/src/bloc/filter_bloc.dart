import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meal_pedia/src/model/meal.dart';
import 'package:meal_pedia/src/repository/meal_repository.dart';
import 'package:meta/meta.dart';

part 'filter_event.dart';
part 'filter_state.dart';

class FilterBloc extends Bloc<FilterEvent, FilterState> {
  final _mealRepository = MealRepository();

  static FilterBloc create(BuildContext context) => FilterBloc();
  FilterBloc() : super(FilterInitial()) {
    on<FilterByIngredientEvent>(_onFilterByIngredient);
    on<FilterByCategoryEvent>(_onFilterByCategory);
    on<FilterByAreaEvent>(_onFilterByArea);
  }

  Future<void> _onFilterByIngredient(
      FilterByIngredientEvent event, Emitter emit) async {
    try {
      emit(FilterLoading());
      final response =
          await _mealRepository.filterByIngredient(event.ingredient);
      emit(FilterByIngredientSuccess(response));
    } catch (e) {
      emit(FilterFailedState());
    }
  }

  Future<void> _onFilterByCategory(
      FilterByCategoryEvent event, Emitter emit) async {
    try {
      emit(FilterLoading());
      final response = await _mealRepository.filterByCategory(event.category);
      emit(FilterByCategorySuccess(response));
    } catch (e) {
      emit(FilterFailedState());
    }
  }

  Future<void> _onFilterByArea(FilterByAreaEvent event, Emitter emit) async {
    try {
      emit(FilterLoading());
      final response = await _mealRepository.filterByArea(event.area);
      emit(FilterByAreaSuccess(response));
    } catch (e) {
      emit(FilterFailedState());
    }
  }
}
