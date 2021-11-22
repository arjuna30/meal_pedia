import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:meal_pedia/src/bloc/meal_bloc.dart';
import 'package:meal_pedia/src/bloc/search_bloc.dart';
import 'package:shimmer/shimmer.dart';

class SearchPage extends StatelessWidget {
  static final route =
      ChildRoute('/search', child: (context, args) => SearchPage());
  SearchPage({Key? key}) : super(key: key);

  final _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          autofocus: true,
          controller: _searchController,
          decoration: const InputDecoration(
              filled: true,
              fillColor: Color(0xFFF2F6F5),
              hintText: 'What to cook?',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  borderSide: BorderSide.none),
              suffixIcon: Icon(Icons.search, color: Colors.grey)),
          onSubmitted: (value) {
            if (value.isNotEmpty) {
              context.read<SearchBloc>().add(SearchMealEvent(value));
            }
          },
        ),
      ),
      body: _BodySearchPage(),
    );
  }
}

class _BodySearchPage extends StatelessWidget {
  const _BodySearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<SearchBloc, SearchState>(
        builder: (context, state) {
          if (state is SearchMealLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state is SearchMealFailed) {
            return const Center(
                child: Text('Something went wrong, please try again'));
          }
          if (state is SearchMealSuccess) {
            final mealDetails = state.mealDetails;
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: SingleChildScrollView(
                child: Column(
                    children: mealDetails
                        .map((mealDetail) => _SearchCard(
                              id: mealDetail.idMeal,
                              title: mealDetail.strMeal,
                              nation: mealDetail.strArea,
                              category: mealDetail.strCategory,
                              description: mealDetail.strInstructions,
                              imageUrl: mealDetail.strMealThumb,
                            ))
                        .toList(growable: false)),
              ),
            );
          }
          return const Center(child: Text('Type something on search bar'));
        },
      ),
    );
  }
}

class _SearchCard extends StatelessWidget {
  final String id;
  final String title;
  final String nation;
  final String category;
  final String description;
  final String imageUrl;
  const _SearchCard(
      {Key? key,
      required this.id,
      required this.title,
      required this.nation,
      required this.category,
      required this.description,
      required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Modular.to.pushNamed('/meal/$id');
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        margin: const EdgeInsets.only(bottom: 15),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text('Special Meal from $nation'),
                  Text('Category: $category'),
                  SizedBox(height: 14),
                  Text(
                    description,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: CachedNetworkImage(
                  imageUrl: imageUrl,
                  fit: BoxFit.cover,
                  placeholder: (context, url) => Shimmer(
                    child: Container(height: 80, color: Colors.white),
                    gradient: LinearGradient(
                        colors: [Colors.grey.shade300, Colors.grey.shade100]),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// TextFormField(
// controller: _searchController,
// decoration: const InputDecoration(
// filled: true,
// fillColor: Color(0xFFF2F6F5),
// border: OutlineInputBorder(
// borderRadius: BorderRadius.all(Radius.circular(10)),
// borderSide: BorderSide.none),
// suffixIcon: Icon(
// Icons.search,
// color: Colors.grey,
// )),
// )
