import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:meal_pedia/src/app_module.dart';
import 'package:meal_pedia/src/bloc/category_bloc.dart';
import 'package:meal_pedia/src/bloc/favourite_bloc.dart';
import 'package:meal_pedia/src/bloc/filter_bloc.dart';
import 'package:meal_pedia/src/bloc/ingredient_bloc.dart';
import 'package:meal_pedia/src/bloc/meal_bloc.dart';
import 'package:meal_pedia/src/bloc/random_meal_bloc.dart';
import 'package:meal_pedia/src/bloc/search_bloc.dart';

void main() => runApp(ModularApp(module: AppModule(), child: const MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: const [
        BlocProvider(create: MealBloc.create),
        BlocProvider(create: RandomMealBloc.create),
        BlocProvider(create: CategoryBloc.create),
        BlocProvider(create: IngredientBloc.create),
        BlocProvider(create: FavouriteBloc.create),
        BlocProvider(create: FilterBloc.create),
        BlocProvider(create: SearchBloc.create),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Meal Pedia',
        theme: ThemeData(
            primarySwatch: Colors.brown,
            fontFamily: 'Rubik',
            brightness: Brightness.light,
            appBarTheme: const AppBarTheme(
                systemOverlayStyle: SystemUiOverlayStyle.dark,
                titleTextStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                iconTheme: IconThemeData(color: Colors.black),
                backgroundColor: Colors.transparent,
                elevation: 0,
                toolbarHeight: 45)),
      ).modular(),
    );
  }
}
