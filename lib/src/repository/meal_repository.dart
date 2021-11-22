import 'package:meal_pedia/src/model/area.dart';
import 'package:meal_pedia/src/model/category.dart';
import 'package:meal_pedia/src/model/ingredient.dart';
import 'package:meal_pedia/src/model/meal.dart';
import 'package:meal_pedia/src/repository/network/meal_service.dart';

class MealRepository {
  final _mealService = MealService();

  Future<MealDetail> getRandomMeal() async =>
      await _mealService.getRandomMeal();

  Future<MealDetail> getMealDetail(String id) async =>
      await _mealService.getMealDetail(id);

  Future<List<MealDetail>> searchMeal(String text) async =>
      await _mealService.searchMeal(text);

  Future<List<Category>> getMealCategory() async =>
      await _mealService.getMealCategory();

  Future<List<Category>> getCategory() async =>
      await _mealService.getCategory();

  Future<List<Area>> getArea() async => await _mealService.getArea();

  Future<List<Ingredient>> getIngredient() async =>
      await _mealService.getIngredient();

  Future<List<Meal>> filterByIngredient(String ingredient) async =>
      await _mealService.filterByIngredient(ingredient);

  Future<List<Meal>> filterByCategory(String category) async =>
      await _mealService.filterByCategory(category);

  Future<List<Meal>> filterByArea(String area) async =>
      await _mealService.filterByArea(area);
}
