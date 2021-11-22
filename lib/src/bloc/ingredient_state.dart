part of 'ingredient_bloc.dart';

@immutable
abstract class IngredientState {}

class IngredientInitial extends IngredientState {}

class IngredientLoading extends IngredientState {}

class IngredientSuccess extends IngredientState {
  final List<Ingredient> ingredients;
  IngredientSuccess(this.ingredients);

  @override
  String toString() => ingredients.toString();
}

class IngredientFailed extends IngredientState {}
