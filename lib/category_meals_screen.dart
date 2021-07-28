import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_bloc_demo/dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routerName = "/category-meals";

  @override
  Widget build(BuildContext context) {
    final routerArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoryTitle = routerArgs["title"];
    final catagoryId = routerArgs["id"];
    final categoryMeal = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(catagoryId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle!),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return Text(categoryMeal[index].title);
        },
        itemCount: categoryMeal.length,
      ),
    );
  }
}
