part of 'random_meal_bloc.dart';

@immutable
abstract class RandomMealState {}

class RandomMealInitial extends RandomMealState {}

class RandomMealLoading extends RandomMealState {}

class RandomMealSuccess extends RandomMealState {
  final MealDetail meailDetail;
  RandomMealSuccess(this.meailDetail);
}

class RandomMealFailed extends RandomMealState {}
