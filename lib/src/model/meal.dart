import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'meal.freezed.dart';
part 'meal.g.dart';

@freezed
class Meal with _$Meal {
  const factory Meal(
      {required String strMeal,
      required String strMealThumb,
      required String idMeal}) = _Meal;

  factory Meal.fromJson(Map<String, dynamic> json) => _$MealFromJson(json);
}

@freezed
class MealDetail with _$MealDetail {
  const factory MealDetail(
      {required String idMeal,
      required String strMeal,
      String? strDrinkAlternate,
      required String strCategory,
      required String strArea,
      required String strInstructions,
      required String strMealThumb,
      String? strTags,
      required String strYoutube,
      required String strIngredient1,
      required String strIngredient2,
      required String strIngredient3,
      String? strIngredient4,
      String? strIngredient5,
      String? strIngredient6,
      String? strIngredient7,
      String? strIngredient8,
      String? strIngredient9,
      String? strIngredient10,
      String? strIngredient11,
      String? strIngredient12,
      String? strIngredient13,
      String? strIngredient14,
      String? strIngredient15,
      String? strIngredient16,
      String? strIngredient17,
      String? strIngredient18,
      String? strIngredient19,
      String? strIngredient20,
      required String strMeasure1,
      required String strMeasure2,
      required String strMeasure3,
      String? strMeasure4,
      String? strMeasure5,
      String? strMeasure6,
      String? strMeasure7,
      String? strMeasure8,
      String? strMeasure9,
      String? strMeasure10,
      String? strMeasure11,
      String? strMeasure12,
      String? strMeasure13,
      String? strMeasure14,
      String? strMeasure15,
      String? strMeasure16,
      String? strMeasure17,
      String? strMeasure18,
      String? strMeasure19,
      String? strMeasure20,
      String? strSource}) = _MealDetail;

  factory MealDetail.fromJson(Map<String, dynamic> json) =>
      _$MealDetailFromJson(json);
}
