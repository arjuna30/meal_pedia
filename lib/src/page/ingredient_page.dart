import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:meal_pedia/src/model/ingredient.dart';
import 'package:shimmer/shimmer.dart';

class IngredientPage extends StatelessWidget {
  static final route =
      ChildRoute('/ingredient', child: (context, args) => IngredientPage());
  const IngredientPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ingredient')),
      body: _BodyIngredientPage(),
    );
  }
}

class _BodyIngredientPage extends StatelessWidget {
  const _BodyIngredientPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Ingredient> ingredients = Modular.args.data;
    return SafeArea(
        child: GridView.builder(
      padding: const EdgeInsets.all(20),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 0.6,
        crossAxisSpacing: 20,
        mainAxisSpacing: 25,
        crossAxisCount: 4,
      ),
      itemCount: ingredients.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () => Modular.to.pushNamed(
              '/filter/ingredient/${ingredients[index].strIngredient}'),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.2,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                ),
                child: CachedNetworkImage(
                  imageUrl:
                      'https://www.themealdb.com/images/ingredients/${ingredients[index].strIngredient}.png',
                  placeholder: (context, url) => Shimmer(
                    gradient: LinearGradient(
                        colors: [Colors.grey.shade300, Colors.grey.shade100]),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.2,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                height: MediaQuery.of(context).size.height * 0.055,
                width: MediaQuery.of(context).size.width * 0.4,
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15))),
                child: Text(
                  ingredients[index].strIngredient,
                  style: const TextStyle(
                      fontSize: 12, overflow: TextOverflow.ellipsis),
                ),
              )
            ],
          ),
        );
      },
    ));
  }
}
