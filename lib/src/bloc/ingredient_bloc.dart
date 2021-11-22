import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meal_pedia/src/model/ingredient.dart';
import 'package:meal_pedia/src/repository/meal_repository.dart';
import 'package:meta/meta.dart';

part 'ingredient_event.dart';
part 'ingredient_state.dart';

class IngredientBloc extends Bloc<IngredientEvent, IngredientState> {
  static IngredientBloc create(BuildContext context) =>
      IngredientBloc()..add(GetIngredientEvent());
  final _mealRepository = MealRepository();

  IngredientBloc() : super(IngredientInitial()) {
    on<GetIngredientEvent>(_onGetIngredient);
  }

  Future<void> _onGetIngredient(GetIngredientEvent event, Emitter emit) async {
    try {
      emit(IngredientLoading());
      final response = await _mealRepository.getIngredient();
      emit(IngredientSuccess(response));
    } catch (e) {
      emit(IngredientFailed());
    }
  }
}
