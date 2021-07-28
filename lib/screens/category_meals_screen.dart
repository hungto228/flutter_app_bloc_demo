import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_bloc_demo/dummy_data.dart';
import 'package:flutter_app_bloc_demo/widgets/meal_item.dart';

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
          return MeaslItem(
              id: categoryMeal[index].id,
              title: categoryMeal[index].title,
              imageUrl: categoryMeal[index].imageUrl,
              duration: categoryMeal[index].duration,
              complexity: categoryMeal[index].complexity,
              affordability: categoryMeal[index].affordability);
        },
        itemCount: categoryMeal.length,
      ),
    );
  }
}
