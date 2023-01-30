import 'package:flutter/material.dart';
import 'package:meals_app/widgets/main_Drawer.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});
  static const routeName = '/filters';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Filters'),
      ),
      drawer: const MainDrawer(),
      body: const Center(
        child: Text('Filters'),
      ),
    );
  }
}
