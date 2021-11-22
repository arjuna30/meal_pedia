part of 'search_bloc.dart';

@immutable
abstract class SearchState {}

class SearchInitial extends SearchState {}

class SearchMealLoading extends SearchState {}

class SearchMealSuccess extends SearchState {
  final String text;
  final List<MealDetail> mealDetails;
  SearchMealSuccess(this.text, this.mealDetails);

  @override
  String toString() => 'Found ${mealDetails.length} by $text word';
}

class SearchMealFailed extends SearchState {}
