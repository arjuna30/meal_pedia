import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:meal_pedia/src/bloc/category_bloc.dart';
import 'package:meal_pedia/src/bloc/ingredient_bloc.dart';
import 'package:meal_pedia/src/bloc/random_meal_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:shimmer/shimmer.dart';

class HomePage extends StatelessWidget {
  static final route = ChildRoute(Modular.initialRoute,
      child: (context, args) => const HomePage());

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const Scaffold(
        body: _BodyHomePage(),
      );
}

class _BodyHomePage extends StatelessWidget {
  const _BodyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _refreshController = RefreshController();

    return SafeArea(
      child: BlocBuilder<RandomMealBloc, RandomMealState>(
        builder: (context, state) {
          if (state is RandomMealLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state is RandomMealFailed) {
            return SmartRefresher(
                controller: _refreshController,
                onRefresh: () => _refresh(context, _refreshController),
                child: const Center(
                    child: Text('Something went wrong, please try again')));
          }
          if (state is RandomMealSuccess) {
            final mealDetail = state.meailDetail;
            final _ingredients = <String>[];
            for (int i = 1; i <= 20; i++) {
              if (mealDetail.toJson()['strIngredient$i'] != null &&
                  mealDetail
                      .toJson()['strIngredient$i']
                      .toString()
                      .isNotEmpty) {
                _ingredients.add(mealDetail.toJson()['strIngredient$i']);
              }
            }
            return SmartRefresher(
              controller: _refreshController,
              onRefresh: () => _refresh(context, _refreshController),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () async {
                                await Modular.to.pushNamed('/search');
                              },
                              child: Container(
                                height: 50,
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                decoration: const BoxDecoration(
                                  color: Color(0xFFF2F6F5),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                ),
                                child: Row(
                                  children: const [
                                    Icon(Icons.search, color: Colors.grey),
                                    SizedBox(width: 5),
                                    Text('What to cook?',
                                        style: TextStyle(
                                            fontSize: 16, color: Colors.grey))
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          GestureDetector(
                            child:
                                const Icon(Icons.favorite, color: Colors.black),
                            onTap: () => Modular.to.pushNamed('/favourite'),
                          )
                        ],
                      ),
                      const SizedBox(height: 25),
                      BlocBuilder<CategoryBloc, CategoryState>(
                        builder: (context, state) {
                          if (state is CategoryLoading) {
                            return const _LoadingWidget();
                          }
                          if (state is CategorySuccess) {
                            final categories = state.categories;
                            return SizedBox(
                              height: 50,
                              child: ListView.builder(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: categories.length,
                                  itemBuilder: (context, index) {
                                    return GestureDetector(
                                      onTap: () => Modular.to.pushNamed(
                                        '/filter/category/${categories[index].strCategory}',
                                      ),
                                      child: Container(
                                          margin:
                                              const EdgeInsets.only(right: 18),
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 5),
                                          decoration: const BoxDecoration(
                                            color: Color(0xFFF2F6F5),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Center(
                                                child: Text(
                                                    categories[index]
                                                        .strCategory,
                                                    textAlign:
                                                        TextAlign.center)),
                                          )),
                                    );
                                  }),
                            );
                          }
                          return const SizedBox.shrink();
                        },
                      ),
                      const SizedBox(height: 25),
                      GestureDetector(
                        onTap: () =>
                            Modular.to.pushNamed('/meal/${mealDetail.idMeal}'),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.55,
                          width: MediaQuery.of(context).size.width * 0.75,
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 20),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(mealDetail.strMealThumb),
                                  fit: BoxFit.cover),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                mealDetail.strMeal,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '${_ingredients.length} Ingredients  |  ${mealDetail.strCategory}',
                                style: const TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 25),
                      const Align(
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            'Search by Ingredient',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          )),
                      const SizedBox(height: 15),
                      BlocBuilder<IngredientBloc, IngredientState>(
                        builder: (context, state) {
                          if (state is IngredientSuccess) {
                            final ingredients = state.ingredients;
                            return GridView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                childAspectRatio: 0.6,
                                crossAxisSpacing: 20,
                                mainAxisSpacing: 3,
                                crossAxisCount: 5,
                              ),
                              itemCount: 10,
                              itemBuilder: (context, index) {
                                return (index + 1 == 10)
                                    ? GestureDetector(
                                        onTap: () => Modular.to.pushNamed(
                                            '/ingredient',
                                            arguments: ingredients),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: const [
                                            Icon(
                                              Icons.more_horiz,
                                              size: 50,
                                            ),
                                            Text(
                                              'More',
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(fontSize: 12),
                                            )
                                          ],
                                        ),
                                      )
                                    : GestureDetector(
                                        onTap: () {
                                          Modular.to.pushNamed(
                                              '/filter/ingredient/${ingredients[index].strIngredient}');
                                        },
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: 50,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: CachedNetworkImageProvider(
                                                          'https://www.themealdb.com/images/ingredients/${ingredients[index].strIngredient}.png'))),
                                            ),
                                            Text(
                                              ingredients[index].strIngredient,
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style:
                                                  const TextStyle(fontSize: 12),
                                            )
                                          ],
                                        ),
                                      );
                              },
                            );
                            // return Container(
                            //   height: 60,
                            //   decoration: BoxDecoration(
                            //       image: DecorationImage(
                            //           image: CachedNetworkImageProvider(
                            //               'https://www.themealdb.com/images/ingredients/${ingredients.first.strIngredient}.png'))),
                            // );
                          }
                          return const SizedBox.shrink();
                        },
                      ),
                    ],
                  ),
                ),
              ),
            );
          }
          return Container();
        },
      ),
    );
  }
}

void _refresh(BuildContext context, RefreshController refreshController) {
  context.read<RandomMealBloc>().add(GetRandomEvent());
  context.read<CategoryBloc>().add(GetCategoryEvent());
  context.read<IngredientBloc>().add(GetIngredientEvent());
  refreshController.refreshCompleted();
}

class _LoadingWidget extends StatelessWidget {
  const _LoadingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer(
        gradient: LinearGradient(
            colors: [Colors.grey.shade300, Colors.grey.shade100]),
        child: SizedBox(
          height: 50,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 4,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(right: 18),
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.2,
                  decoration: const BoxDecoration(
                    color: Color(0xFFF2F6F5),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                );
              }),
        ));
  }
}
