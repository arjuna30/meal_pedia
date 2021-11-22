import 'package:meal_pedia/src/model/meal.dart';
import 'package:meal_pedia/src/repository/database/meal_database.dart';
import 'package:meal_pedia/src/repository/database/table/favourites_table.dart';

class FavouriteRepository {
  final db = MealDatabase();

  Future<List<MealDetail>> getAllFavourites() async {
    final mealDetails = <MealDetail>[];
    final records = await db.getAllFavourites();
    for (final record in records) {
      mealDetails.add(record.toModel());
    }
    return mealDetails;
  }

  Future<FavouriteRecord?> getFavouriteRecord(String idMeal) async {
    return await db.getFavouriteRecord(idMeal);
  }

  Future<void> insertFavourite(MealDetail mealDetail) async {
    final favouriteRecord = mealDetail.toRecord();
    await db.insertFavourite(favouriteRecord);
  }

  Future<void> deleteFavourite(FavouriteRecord favouriteRecord) async {
    await db.deleteFavourite(favouriteRecord);
  }
}
