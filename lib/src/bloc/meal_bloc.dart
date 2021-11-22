import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meal_pedia/src/model/area.dart';
import 'package:meal_pedia/src/model/category.dart';
import 'package:meal_pedia/src/model/ingredient.dart';
import 'package:meal_pedia/src/model/meal.dart';
import 'package:meal_pedia/src/repository/meal_repository.dart';
import 'package:meta/meta.dart';

part 'meal_event.dart';
part 'meal_state.dart';

class MealBloc extends Bloc<MealEvent, MealState> {
  static MealBloc create(BuildContext context) => MealBloc();
  final _mealRepository = MealRepository();

  MealBloc() : super(MealInitial()) {
    on<GetDetailEvent>(_onGetDetail);
    on<GetAreaEvent>(_onGetArea);
  }

  Future<void> _onGetDetail(GetDetailEvent event, Emitter emit) async {
    try {
      emit(MealDetailLoading());
      final response = await _mealRepository.getMealDetail(event.id);
      emit(MealDetailSuccess(response));
    } catch (e) {
      emit(MealDetailFailed());
    }
  }

  Future<void> _onGetArea(GetAreaEvent event, Emitter emit) async {
    try {
      emit(AreaLoading());
      final response = await _mealRepository.getArea();
      emit(AreaSuccess(response));
    } catch (e) {
      emit(AreaFailed());
    }
  }
}
