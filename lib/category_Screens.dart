import 'package:flutter/material.dart';
import 'package:flutter_app_bloc_demo/category_item.dart';
import 'package:flutter_app_bloc_demo/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DeliMeals"),
      ),
      body: GridView(
        children: DUMMY_CATEGORIES
            .map(
              (catDate) => CategoryItem(
                title: catDate.title,
                colors: catDate.color,
              ),
            )
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
