import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meal_pedia/src/model/meal.dart';
import 'package:meal_pedia/src/repository/meal_repository.dart';
import 'package:meta/meta.dart';

part 'random_meal_event.dart';
part 'random_meal_state.dart';

class RandomMealBloc extends Bloc<RandomMealEvent, RandomMealState> {
  final _mealRepository = MealRepository();
  static RandomMealBloc create(BuildContext context) =>
      RandomMealBloc()..add(GetRandomEvent());
  RandomMealBloc() : super(RandomMealInitial()) {
    on<GetRandomEvent>(_onGetRandom);
  }

  Future<void> _onGetRandom(GetRandomEvent event, Emitter emit) async {
    try {
      emit(RandomMealLoading());
      final response = await _mealRepository.getRandomMeal();
      emit(RandomMealSuccess(response));
    } catch (e) {
      emit(RandomMealFailed());
    }
  }
}
