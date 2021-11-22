import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:meal_pedia/src/bloc/filter_bloc.dart';

class FilterPage extends StatelessWidget {
  static final route = ChildRoute('/filter/:type/:string',
      child: (context, args) => const FilterPage());
  const FilterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String type = Modular.args.params['type'];
    return Scaffold(
      appBar: AppBar(title: Text(type[0].toUpperCase() + type.substring(1))),
      body: const _BodyFilterPage(),
    );
  }
}

class _BodyFilterPage extends StatefulWidget {
  const _BodyFilterPage({Key? key}) : super(key: key);

  @override
  State<_BodyFilterPage> createState() => _BodyFilterPageState();
}

class _BodyFilterPageState extends State<_BodyFilterPage> {
  @override
  void initState() {
    super.initState();
    if (Modular.args.params['type'] == 'category') {
      context
          .read<FilterBloc>()
          .add(FilterByCategoryEvent(Modular.args.params['string']));
    }
    if (Modular.args.params['type'] == 'ingredient') {
      context
          .read<FilterBloc>()
          .add(FilterByIngredientEvent(Modular.args.params['string']));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilterBloc, FilterState>(
      builder: (context, state) {
        if (state is FilterLoading) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state is FilterFailedState) {
          return const Center(
              child: Text('Something went wrong, please try again'));
        }
        if (state is FilterByCategorySuccess) {
          final meals = state.meals;
          return SafeArea(
              child: GridView.builder(
            padding: const EdgeInsets.all(20),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 0.77,
              crossAxisSpacing: 20,
              mainAxisSpacing: 50,
              crossAxisCount: 2,
            ),
            itemCount: meals.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () =>
                    Modular.to.pushNamed('/meal/${meals[index].idMeal}'),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 10.0,
                        spreadRadius: 0,
                        offset: const Offset(4.0, 4.0),
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.25,
                        width: MediaQuery.of(context).size.width * 0.4,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15)),
                          image: DecorationImage(
                              image: CachedNetworkImageProvider(
                                  meals[index].strMealThumb),
                              fit: BoxFit.cover),
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
                          meals[index].strMeal,
                          style: const TextStyle(
                              fontSize: 12, overflow: TextOverflow.ellipsis),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ));
        }
        if (state is FilterByIngredientSuccess) {
          final meals = state.meals;
          return SafeArea(
              child: GridView.builder(
            padding: const EdgeInsets.all(20),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 0.77,
              crossAxisSpacing: 20,
              mainAxisSpacing: 50,
              crossAxisCount: 2,
            ),
            itemCount: meals.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () =>
                    Modular.to.pushNamed('/meal/${meals[index].idMeal}'),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 10.0,
                        spreadRadius: 0,
                        offset: const Offset(4.0, 4.0),
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.25,
                        width: MediaQuery.of(context).size.width * 0.4,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15)),
                          image: DecorationImage(
                              image: CachedNetworkImageProvider(
                                  meals[index].strMealThumb),
                              fit: BoxFit.cover),
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
                          meals[index].strMeal,
                          style: const TextStyle(
                              fontSize: 12, overflow: TextOverflow.ellipsis),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ));
        }
        return const SizedBox.shrink();
      },
    );
  }
}
