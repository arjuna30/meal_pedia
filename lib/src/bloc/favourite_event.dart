part of 'favourite_bloc.dart';

@immutable
abstract class FavouriteEvent {}

class GetFavouriteEvent extends FavouriteEvent {}

class FavouriteCheckEvent extends FavouriteEvent {
  final String idMeal;
  FavouriteCheckEvent(this.idMeal);
}

class ToggleFavouriteEvent extends FavouriteEvent {
  final MealDetail mealDetail;
  ToggleFavouriteEvent(this.mealDetail);
}
