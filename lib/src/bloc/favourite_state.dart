part of 'favourite_bloc.dart';

@immutable
abstract class FavouriteState {}

class FavouriteInitial extends FavouriteState {}

class FavouriteLoadingState extends FavouriteState {}

class FavouriteSuccessState extends FavouriteState {
  final List<MealDetail> mealDetails;
  FavouriteSuccessState(this.mealDetails);
}

class AlreadyAddedToFavourite extends FavouriteState {}

class NotAddedToFavourite extends FavouriteState {}

class AddFavouriteSuccess extends FavouriteState {}

class RemoveFavouriteSuccess extends FavouriteState {}

class FavouriteError extends FavouriteState {}
