part of 'search_bloc.dart';

@immutable
abstract class SearchEvent {}

class SearchMealEvent extends SearchEvent {
  final String text;
  SearchMealEvent(this.text);
}
