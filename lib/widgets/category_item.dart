import 'package:flutter/material.dart';
import 'package:meals_app/screens/category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.id,
    required this.title,
    required this.color,
  });
  final String id;
  final String title;
  final Color color;

  void selectCatogry(BuildContext context) {
    Navigator.of(context).pushNamed(CategoryMealScreen.routeName, arguments: {
      'id': id,
      'title': title,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () => selectCatogry(context),
        splashColor: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(15),
        child: Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                color.withOpacity(0.7),
                color,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Text(
            title,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
      ),
    );
  }
}
