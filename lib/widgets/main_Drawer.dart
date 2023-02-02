import 'package:flutter/material.dart';

import '../screens/filters_screen.dart';
class MainDrawers extends StatelessWidget {
  const MainDrawers({super.key});

  Widget drawer(
    BuildContext context,
    String name,
  ) {
    return Container(
      height: 120,
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      alignment: Alignment.centerLeft,
      color: Theme.of(context).colorScheme.secondary,
      child: Text(
        'Cooking Up!',
        style: TextStyle(
          fontWeight: FontWeight.w900,
          fontSize: 30,
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }

  Widget drawerItem(
    String text,
    IconData icons,
    Function tapHandler,
  ) {
    return ListTile(
        leading: Icon(
          icons,
          size: 26,
        ),
        title: Text(
          text,
          style: const TextStyle(
            fontFamily: 'RobotoCondensed',
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        onTap: (() {
          Future.delayed(Duration.zero, () {
            tapHandler();
          });
        }));
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          drawer(context, 'Cooking Up!'),
          const SizedBox(
            height: 10,
          ),
          drawerItem(
            'Meals',
            Icons.restaurant,
            () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          drawerItem(
            'Filters',
            Icons.settings,
            () {
              Navigator.of(context)
                  .pushReplacementNamed(FilterScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
