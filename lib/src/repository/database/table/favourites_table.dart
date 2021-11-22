import 'package:meal_pedia/src/model/meal.dart';
import 'package:meal_pedia/src/repository/database/meal_database.dart';
import 'package:moor/moor.dart';
import 'package:moor_flutter/moor_flutter.dart';

@DataClassName('FavouriteRecord')
class Favourites extends Table {
  TextColumn get idMeal => text()();

  TextColumn get strMeal => text()();

  TextColumn get strDrinkAlternate => text().nullable()();

  TextColumn get strCategory => text()();

  TextColumn get strArea => text()();

  TextColumn get strInstructions => text()();

  TextColumn get strMealThumb => text()();

  TextColumn get strTags => text().nullable()();

  TextColumn get strYoutube => text()();

  TextColumn get strIngredient1 => text()();

  TextColumn get strIngredient2 => text()();

  TextColumn get strIngredient3 => text()();

  TextColumn get strIngredient4 => text().nullable()();

  TextColumn get strIngredient5 => text().nullable()();

  TextColumn get strIngredient6 => text().nullable()();

  TextColumn get strIngredient7 => text().nullable()();

  TextColumn get strIngredient8 => text().nullable()();

  TextColumn get strIngredient9 => text().nullable()();

  TextColumn get strIngredient10 => text().nullable()();

  TextColumn get strIngredient11 => text().nullable()();

  TextColumn get strIngredient12 => text().nullable()();

  TextColumn get strIngredient13 => text().nullable()();

  TextColumn get strIngredient14 => text().nullable()();

  TextColumn get strIngredient15 => text().nullable()();

  TextColumn get strIngredient16 => text().nullable()();

  TextColumn get strIngredient17 => text().nullable()();

  TextColumn get strIngredient18 => text().nullable()();

  TextColumn get strIngredient19 => text().nullable()();

  TextColumn get strIngredient20 => text().nullable()();

  TextColumn get strMeasure1 => text()();

  TextColumn get strMeasure2 => text()();

  TextColumn get strMeasure3 => text()();

  TextColumn get strMeasure4 => text().nullable()();

  TextColumn get strMeasure5 => text().nullable()();

  TextColumn get strMeasure6 => text().nullable()();

  TextColumn get strMeasure7 => text().nullable()();

  TextColumn get strMeasure8 => text().nullable()();

  TextColumn get strMeasure9 => text().nullable()();

  TextColumn get strMeasure10 => text().nullable()();

  TextColumn get strMeasure11 => text().nullable()();

  TextColumn get strMeasure12 => text().nullable()();

  TextColumn get strMeasure13 => text().nullable()();

  TextColumn get strMeasure14 => text().nullable()();

  TextColumn get strMeasure15 => text().nullable()();

  TextColumn get strMeasure16 => text().nullable()();

  TextColumn get strMeasure17 => text().nullable()();

  TextColumn get strMeasure18 => text().nullable()();

  TextColumn get strMeasure19 => text().nullable()();

  TextColumn get strMeasure20 => text().nullable()();

  TextColumn get strSource => text().nullable()();

  @override
  Set<Column>? get primaryKey => {idMeal};
}

extension FavouriteRecordMapper on FavouriteRecord {
  MealDetail toModel() => MealDetail(
        idMeal: idMeal,
        strMeal: strMeal,
        strDrinkAlternate: strDrinkAlternate,
        strCategory: strCategory,
        strArea: strArea,
        strInstructions: strInstructions,
        strMealThumb: strMealThumb,
        strTags: strTags,
        strYoutube: strYoutube,
        strIngredient1: strIngredient1,
        strIngredient2: strIngredient2,
        strIngredient3: strIngredient3,
        strIngredient4: strIngredient4,
        strIngredient5: strIngredient5,
        strIngredient6: strIngredient6,
        strIngredient7: strIngredient7,
        strIngredient8: strIngredient8,
        strIngredient9: strIngredient9,
        strIngredient10: strIngredient10,
        strIngredient11: strIngredient11,
        strIngredient12: strIngredient12,
        strIngredient13: strIngredient13,
        strIngredient14: strIngredient14,
        strIngredient15: strIngredient15,
        strIngredient16: strIngredient16,
        strIngredient17: strIngredient17,
        strIngredient18: strIngredient18,
        strIngredient19: strIngredient19,
        strIngredient20: strIngredient20,
        strMeasure1: strMeasure1,
        strMeasure2: strMeasure2,
        strMeasure3: strMeasure3,
        strMeasure4: strMeasure4,
        strMeasure5: strMeasure5,
        strMeasure6: strMeasure6,
        strMeasure7: strMeasure7,
        strMeasure8: strMeasure8,
        strMeasure9: strMeasure9,
        strMeasure10: strMeasure10,
        strMeasure11: strMeasure11,
        strMeasure12: strMeasure12,
        strMeasure13: strMeasure13,
        strMeasure14: strMeasure14,
        strMeasure15: strMeasure15,
        strMeasure16: strMeasure16,
        strMeasure17: strMeasure17,
        strMeasure18: strMeasure18,
        strMeasure19: strMeasure19,
        strMeasure20: strMeasure20,
        strSource: strSource,
      );
}

extension MealDetailMapper on MealDetail {
  FavouriteRecord toRecord() => FavouriteRecord(
        idMeal: idMeal,
        strMeal: strMeal,
        strDrinkAlternate: strDrinkAlternate,
        strCategory: strCategory,
        strArea: strArea,
        strInstructions: strInstructions,
        strMealThumb: strMealThumb,
        strTags: strTags,
        strYoutube: strYoutube,
        strIngredient1: strIngredient1,
        strIngredient2: strIngredient2,
        strIngredient3: strIngredient3,
        strIngredient4: strIngredient4,
        strIngredient5: strIngredient5,
        strIngredient6: strIngredient6,
        strIngredient7: strIngredient7,
        strIngredient8: strIngredient8,
        strIngredient9: strIngredient9,
        strIngredient10: strIngredient10,
        strIngredient11: strIngredient11,
        strIngredient12: strIngredient12,
        strIngredient13: strIngredient13,
        strIngredient14: strIngredient14,
        strIngredient15: strIngredient15,
        strIngredient16: strIngredient16,
        strIngredient17: strIngredient17,
        strIngredient18: strIngredient18,
        strIngredient19: strIngredient19,
        strIngredient20: strIngredient20,
        strMeasure1: strMeasure1,
        strMeasure2: strMeasure2,
        strMeasure3: strMeasure3,
        strMeasure4: strMeasure4,
        strMeasure5: strMeasure5,
        strMeasure6: strMeasure6,
        strMeasure7: strMeasure7,
        strMeasure8: strMeasure8,
        strMeasure9: strMeasure9,
        strMeasure10: strMeasure10,
        strMeasure11: strMeasure11,
        strMeasure12: strMeasure12,
        strMeasure13: strMeasure13,
        strMeasure14: strMeasure14,
        strMeasure15: strMeasure15,
        strMeasure16: strMeasure16,
        strMeasure17: strMeasure17,
        strMeasure18: strMeasure18,
        strMeasure19: strMeasure19,
        strMeasure20: strMeasure20,
        strSource: strSource,
      );
}
