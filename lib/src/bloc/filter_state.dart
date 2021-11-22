part of 'filter_bloc.dart';

@immutable
abstract class FilterState {}

class FilterInitial extends FilterState {}

class FilterLoading extends FilterState {}

class FilterByIngredientSuccess extends FilterState {
  final List<Meal> meals;
  FilterByIngredientSuccess(this.meals);

  @override
  String toString() => meals.toString();
}

class FilterByCategorySuccess extends FilterState {
  final List<Meal> meals;
  FilterByCategorySuccess(this.meals);

  @override
  String toString() => meals.toString();
}

class FilterByAreaSuccess extends FilterState {
  final List<Meal> meals;
  FilterByAreaSuccess(this.meals);

  @override
  String toString() => meals.toString();
}

class FilterFailedState extends FilterState {}
