part of 'meal_bloc.dart';

@immutable
abstract class MealEvent {}

class GetDetailEvent extends MealEvent {
  final String id;
  GetDetailEvent(this.id);
}

class GetAreaEvent extends MealEvent {}
