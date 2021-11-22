import 'package:flutter_modular/flutter_modular.dart';
import 'package:meal_pedia/src/page/detail_page.dart';
import 'package:meal_pedia/src/page/favourite_page.dart';
import 'package:meal_pedia/src/page/filter_page.dart';
import 'package:meal_pedia/src/page/home_page.dart';
import 'package:meal_pedia/src/page/ingredient_page.dart';
import 'package:meal_pedia/src/page/search_page.dart';

class AppModule extends Module {
  @override
  List<Bind<Object>> get binds => super.binds;

  @override
  List<ModularRoute> get routes => _routes;
}

final List<ChildRoute> _routes = [
  HomePage.route,
  FavouritePage.route,
  DetailPage.route,
  IngredientPage.route,
  SearchPage.route,
  FilterPage.route,
];
