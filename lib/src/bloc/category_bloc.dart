import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meal_pedia/src/model/category.dart';
import 'package:meal_pedia/src/repository/meal_repository.dart';
import 'package:meta/meta.dart';

part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final _mealRepository = MealRepository();
  static CategoryBloc create(BuildContext context) =>
      CategoryBloc()..add(GetCategoryEvent());

  CategoryBloc() : super(CategoryInitial()) {
    on<GetMealCategoryEvent>(_onGetMealCategory);
    on<GetCategoryEvent>(_onGetCategory);
  }
  Future<void> _onGetMealCategory(
      GetMealCategoryEvent event, Emitter emit) async {
    try {
      emit(MealCategoryLoading());
      final response = await _mealRepository.getMealCategory();
      emit(MealCategorySuccess(response));
    } catch (e) {
      emit(MealCategoryFailed());
    }
  }

  Future<void> _onGetCategory(GetCategoryEvent event, Emitter emit) async {
    try {
      emit(CategoryLoading());
      final response = await _mealRepository.getCategory();
      emit(CategorySuccess(response));
    } catch (e) {
      emit(CategoryFailed());
    }
  }
}
