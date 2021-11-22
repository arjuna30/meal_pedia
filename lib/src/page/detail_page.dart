import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:meal_pedia/src/bloc/favourite_bloc.dart';
import 'package:meal_pedia/src/bloc/meal_bloc.dart';
import 'package:meal_pedia/src/model/meal.dart';

class DetailPage extends StatefulWidget {
  static final route =
      ChildRoute('/meal/:id', child: (context, args) => DetailPage());

  const DetailPage({Key? key, x}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  void initState() {
    super.initState();
    context.read<MealBloc>().add(GetDetailEvent(Modular.args.params['id']));
    context
        .read<FavouriteBloc>()
        .add(FavouriteCheckEvent(Modular.args.params['id']));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MealBloc, MealState>(
      builder: (context, state) {
        if (state is MealDetailLoading) {
          return const Scaffold(
              body: Center(child: CircularProgressIndicator()));
        }
        if (state is MealDetailFailed) {
          Scaffold(
            appBar: AppBar(title: const Text('Error')),
            body: const Center(
              child: Text('Something went wrong, please try again.'),
            ),
          );
        }
        if (state is MealDetailSuccess) {
          final mealDetail = state.mealDetail;
          return Scaffold(
            body: _BodyDetailPage(mealDetail),
          );
        }
        return SizedBox.shrink();
      },
    );
  }
}

class _BodyDetailPage extends StatefulWidget {
  final MealDetail mealDetail;
  const _BodyDetailPage(this.mealDetail, {Key? key}) : super(key: key);

  @override
  State<_BodyDetailPage> createState() => _BodyDetailPageState();
}

class _BodyDetailPageState extends State<_BodyDetailPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final ingredients = <String>[];
    final measures = <String>[];
    for (int i = 1; i <= 20; i++) {
      if (widget.mealDetail.toJson()['strIngredient$i'] != null &&
          widget.mealDetail.toJson()['strIngredient$i'].toString().isNotEmpty) {
        ingredients.add(widget.mealDetail.toJson()['strIngredient$i']);
        measures.add(widget.mealDetail.toJson()['strMeasure$i']);
      }
    }
    return CustomScrollView(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      slivers: [
        SliverAppBar(
          expandedHeight: MediaQuery.of(context).size.height * 0.40,
          pinned: true,
          backgroundColor: Colors.white,
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: BlocBuilder<FavouriteBloc, FavouriteState>(
                builder: (context, state) {
                  if (state is AddFavouriteSuccess ||
                      state is AlreadyAddedToFavourite) {
                    return GestureDetector(
                      child: const Icon(Icons.favorite, color: Colors.pink),
                      onTap: () {
                        context
                            .read<FavouriteBloc>()
                            .add(ToggleFavouriteEvent(widget.mealDetail));
                      },
                    );
                  }
                  return GestureDetector(
                    child:
                        const Icon(Icons.favorite_border, color: Colors.pink),
                    onTap: () {
                      context
                          .read<FavouriteBloc>()
                          .add(ToggleFavouriteEvent(widget.mealDetail));
                    },
                  );
                },
              ),
            )
          ],
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: false,
            titlePadding: const EdgeInsets.only(left: 20, bottom: 10),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  widget.mealDetail.strMeal,
                  maxLines: 2,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                Text('Special Meal from ${widget.mealDetail.strArea}',
                    style: TextStyle(fontSize: 13)),
                const SizedBox(height: 3),
                GestureDetector(
                    onTap: () => Modular.to.pushNamed(
                        '/filter/category/${widget.mealDetail.strCategory}'),
                    child: Text(
                      widget.mealDetail.strCategory,
                      style: TextStyle(fontSize: 12),
                    )),
              ],
            ),
            background: CachedNetworkImage(
              alignment: Alignment.center,
              imageUrl: widget.mealDetail.strMealThumb,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverList(
            delegate: SliverChildListDelegate([
          TabBar(
            controller: _tabController,
            labelColor: Colors.black,
            tabs: const [
              Tab(text: 'Ingredients'),
              Tab(text: 'Instructions'),
            ],
          )
        ])),
        SliverFillRemaining(
          child: TabBarView(
            controller: _tabController,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.47,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 3,
                    crossAxisCount: 4,
                  ),
                  itemCount: ingredients.length,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: const BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15)),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 75,
                            width: 75,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15)),
                              image: DecorationImage(
                                  image: CachedNetworkImageProvider(
                                      'https://www.themealdb.com/images/ingredients/${ingredients[index]}.png'),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Container(
                            width: 100,
                            padding: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(15),
                                    bottomRight: Radius.circular(15))),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  ingredients[index],
                                  style: const TextStyle(
                                      fontSize: 12,
                                      overflow: TextOverflow.ellipsis),
                                ),
                                Text(
                                  '@${measures[index]}',
                                  style: const TextStyle(
                                      fontSize: 12,
                                      overflow: TextOverflow.ellipsis),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                child: Text(
                  widget.mealDetail.strInstructions,
                  style: const TextStyle(fontSize: 16, height: 1.7),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
