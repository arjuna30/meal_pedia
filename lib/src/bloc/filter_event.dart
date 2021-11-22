part of 'filter_bloc.dart';

@immutable
abstract class FilterEvent {}

class FilterByIngredientEvent extends FilterEvent {
  final String ingredient;
  FilterByIngredientEvent(this.ingredient);
}

class FilterByCategoryEvent extends FilterEvent {
  final String category;
  FilterByCategoryEvent(this.category);
}

class FilterByAreaEvent extends FilterEvent {
  final String area;
  FilterByAreaEvent(this.area);
}
