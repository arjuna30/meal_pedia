part of 'category_bloc.dart';

@immutable
abstract class CategoryEvent {}

class GetMealCategoryEvent extends CategoryEvent {}

class GetCategoryEvent extends CategoryEvent {}
