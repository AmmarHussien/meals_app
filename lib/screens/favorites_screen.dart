import 'package:flutter/material.dart';
import 'package:meals_app/models/meal.dart';

import '../widgets/meal_item.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen(this.favoritesMeal, {super.key});
  final List<Meal> favoritesMeal;
  @override
  Widget build(BuildContext context) {
    if (favoritesMeal.isEmpty) {
      return const Center(
        child: Text('You havo no favorites yes, start to add some'),
      );
    } else {
      return ListView.builder(
        itemBuilder: (
          BuildContext context,
          int index,
        ) {
          return MealItem(
            id: favoritesMeal[index].id,
            title: favoritesMeal[index].title,
            imageUrl: favoritesMeal[index].imageUrl,
            duration: favoritesMeal[index].duration,
            complexity: favoritesMeal[index].complexity,
            affordability: favoritesMeal[index].affordability,
          );
        },
        itemCount: favoritesMeal.length,
      );
    }
  }
}
