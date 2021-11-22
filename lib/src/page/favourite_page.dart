import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:meal_pedia/src/bloc/favourite_bloc.dart';

class FavouritePage extends StatelessWidget {
  static final route =
      ChildRoute('/favourite', child: (context, args) => FavouritePage());
  const FavouritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Favourite')),
      body: _BodyFavouritePage(),
    );
  }
}

class _BodyFavouritePage extends StatefulWidget {
  const _BodyFavouritePage({Key? key}) : super(key: key);

  @override
  State<_BodyFavouritePage> createState() => _BodyFavouritePageState();
}

class _BodyFavouritePageState extends State<_BodyFavouritePage> {
  @override
  void initState() {
    super.initState();
    context.read<FavouriteBloc>().add(GetFavouriteEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavouriteBloc, FavouriteState>(
      builder: (context, state) {
        if (state is FavouriteLoadingState) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state is FavouriteError) {
          return const Center(
              child: Text('Something went wrong, please try again'));
        }
        if (state is FavouriteSuccessState) {
          final mealDetails = state.mealDetails;
          return SafeArea(
              child: GridView.builder(
            padding: const EdgeInsets.all(20),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 0.77,
              crossAxisSpacing: 20,
              mainAxisSpacing: 50,
              crossAxisCount: 2,
            ),
            itemCount: mealDetails.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () async {
                  await Modular.to
                      .pushNamed('/meal/${mealDetails[index].idMeal}')
                      .then((_) => this
                          .context
                          .read<FavouriteBloc>()
                          .add(GetFavouriteEvent()));
                },
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
                                  mealDetails[index].strMealThumb),
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
                          mealDetails[index].strMeal,
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
