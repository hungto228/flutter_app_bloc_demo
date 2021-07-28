import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routerName = "/category-meals";
  @override
  Widget build(BuildContext context) {
    final routerArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoryTitle = routerArgs["title"];
    final catagoryId = routerArgs["id"];
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle!),
      ),
      body: Center(
        child: Text("the recipesFor the category !"),
      ),
    );
  }
}
