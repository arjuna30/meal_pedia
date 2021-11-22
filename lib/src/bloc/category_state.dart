part of 'category_bloc.dart';

@immutable
abstract class CategoryState {}

class CategoryInitial extends CategoryState {}

class MealCategoryLoading extends CategoryState {}

class MealCategorySuccess extends CategoryState {
  final List<Category> categories;
  MealCategorySuccess(this.categories);

  @override
  String toString() => categories.toString();
}

class MealCategoryFailed extends CategoryState {}

class CategoryLoading extends CategoryState {}

class CategorySuccess extends CategoryState {
  final List<Category> categories;
  CategorySuccess(this.categories);

  @override
  String toString() => categories.toString();
}

class CategoryFailed extends CategoryState {}
