part of 'meal_bloc.dart';

@immutable
abstract class MealState {}

class MealInitial extends MealState {}

class MealDetailLoading extends MealState {}

class MealDetailSuccess extends MealState {
  final MealDetail mealDetail;
  MealDetailSuccess(this.mealDetail);

  @override
  String toString() => '${mealDetail.idMeal} - ${mealDetail.strMeal}';
}

class MealDetailFailed extends MealState {}

class AreaLoading extends MealState {}

class AreaSuccess extends MealState {
  final List<Area> areas;
  AreaSuccess(this.areas);

  @override
  String toString() => areas.toString();
}

class AreaFailed extends MealState {}
