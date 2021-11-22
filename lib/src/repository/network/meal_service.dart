import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:meal_pedia/src/model/area.dart';
import 'package:meal_pedia/src/model/category.dart';
import 'package:meal_pedia/src/model/ingredient.dart';
import 'package:meal_pedia/src/model/meal.dart';

class MealService {
  static const mainUrl = 'https://www.themealdb.com/api/json/v1/1/';
  final Dio _dio = Dio(BaseOptions(baseUrl: mainUrl, sendTimeout: 6));

  Future<MealDetail> getRandomMeal() async {
    try {
      final response = await _dio.get('random.php');
      return MealDetail.fromJson(response.data['meals'][0]);
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  Future<MealDetail> getMealDetail(String id) async {
    try {
      final response = await _dio.get('lookup.php?i=$id');
      return MealDetail.fromJson(response.data['meals'][0]);
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  Future<List<MealDetail>> searchMeal(String text) async {
    try {
      final mealList = <MealDetail>[];
      final convertedText = text.toLowerCase().replaceAll(' ', '_');
      final response = await _dio.get('search.php?s=$convertedText');
      final List meals = response.data['meals'];
      for (final meal in meals) {
        mealList.add(MealDetail.fromJson(meal));
      }
      return mealList;
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  Future<List<Category>> getMealCategory() async {
    try {
      final categoryList = <Category>[];
      final response = await _dio.get('categories.php');
      final List categories = response.data['categories'];
      for (final category in categories) {
        categoryList.add(Category.fromJson(category));
      }
      return categoryList;
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  Future<List<Category>> getCategory() async {
    try {
      final categoryList = <Category>[];
      final response = await _dio.get('list.php?c=list');
      final List categories = response.data['meals'];
      for (final category in categories) {
        categoryList.add(Category.fromJson(category));
      }
      return categoryList;
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  Future<List<Area>> getArea() async {
    try {
      final areaList = <Area>[];
      final response = await _dio.get('list.php?a=list');
      final List areas = response.data['meals'];
      for (final area in areas) {
        areaList.add(Area.fromJson(area));
      }
      return areaList;
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  Future<List<Ingredient>> getIngredient() async {
    try {
      final ingredientList = <Ingredient>[];
      final response = await _dio.get('list.php?i=list');
      final List ingredients = response.data['meals'];
      for (final ingredient in ingredients) {
        ingredientList.add(Ingredient.fromJson(ingredient));
      }
      return ingredientList;
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  Future<List<Meal>> filterByIngredient(String ingredient) async {
    try {
      final convertedText = ingredient.toLowerCase().replaceAll(' ', '_');
      final mealList = <Meal>[];
      final response = await _dio.get('filter.php?i=$convertedText');
      final List meals = response.data['meals'];
      for (final meal in meals) {
        mealList.add(Meal.fromJson(meal));
      }
      return mealList;
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  Future<List<Meal>> filterByCategory(String category) async {
    try {
      final mealList = <Meal>[];
      final response = await _dio.get('filter.php?c=$category');
      final List meals = response.data['meals'];
      for (final meal in meals) {
        mealList.add(Meal.fromJson(meal));
      }
      return mealList;
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  Future<List<Meal>> filterByArea(String area) async {
    try {
      final mealList = <Meal>[];
      final response = await _dio.get('filter.php?a=$area');
      final List meals = response.data['meals'];
      for (final meal in meals) {
        mealList.add(Meal.fromJson(meal));
      }
      return mealList;
    } catch (e) {
      print(e);
      rethrow;
    }
  }
}
