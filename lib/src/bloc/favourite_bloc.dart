import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meal_pedia/src/model/meal.dart';
import 'package:meal_pedia/src/repository/favourite_repository.dart';
import 'package:meta/meta.dart';

part 'favourite_event.dart';
part 'favourite_state.dart';

class FavouriteBloc extends Bloc<FavouriteEvent, FavouriteState> {
  static FavouriteBloc create(BuildContext context) => FavouriteBloc();

  final favoriteRepository = FavouriteRepository();

  FavouriteBloc() : super(FavouriteInitial()) {
    on<GetFavouriteEvent>(_getFavourite);
    on<FavouriteCheckEvent>(_favouriteCheck);
    on<ToggleFavouriteEvent>(_toggleFavourite);
  }

  Future<void> _getFavourite(GetFavouriteEvent event, Emitter emit) async {
    try {
      emit(FavouriteLoadingState());
      final mealDetails = await favoriteRepository.getAllFavourites();
      emit(FavouriteSuccessState(mealDetails));
    } catch (e) {
      emit(FavouriteError());
    }
  }

  Future<void> _favouriteCheck(FavouriteCheckEvent event, Emitter emit) async {
    try {
      final record = await favoriteRepository.getFavouriteRecord(event.idMeal);
      if (record != null) {
        emit(AlreadyAddedToFavourite());
      } else {
        emit(NotAddedToFavourite());
      }
    } catch (e) {
      emit(FavouriteError());
    }
  }

  Future<void> _toggleFavourite(
      ToggleFavouriteEvent event, Emitter emit) async {
    try {
      final record =
          await favoriteRepository.getFavouriteRecord(event.mealDetail.idMeal);
      if (record == null) {
        await favoriteRepository.insertFavourite(event.mealDetail);
        emit(AddFavouriteSuccess());
      } else {
        await favoriteRepository.deleteFavourite(record);
        emit(RemoveFavouriteSuccess());
      }
    } catch (e) {
      emit(FavouriteError());
    }
  }
}
