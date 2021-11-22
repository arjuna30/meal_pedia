import 'package:meal_pedia/src/repository/database/table/favourites_table.dart';
import 'package:moor/moor.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'meal_database.g.dart';

@UseMoor(tables: [Favourites])
class MealDatabase extends _$MealDatabase {
  MealDatabase()
      : super((FlutterQueryExecutor.inDatabaseFolder(
          path: 'db.sqlite',
          logStatements: true,
        )));
  @override
  int get schemaVersion => 1;

  Future<List<FavouriteRecord>> getAllFavourites() async =>
      await select(favourites).get();
  Future<FavouriteRecord?> getFavouriteRecord(String idMeal) async =>
      await (select(favourites)..where((tbl) => tbl.idMeal.equals(idMeal)))
          .getSingleOrNull();
  Future<void> insertFavourite(FavouriteRecord mealDetail) async =>
      await into(favourites).insert(mealDetail);

  Future<void> deleteFavourite(FavouriteRecord mealDetail) async =>
      await delete(favourites).delete(mealDetail);
}
