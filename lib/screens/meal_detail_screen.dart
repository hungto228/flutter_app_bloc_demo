import 'package:flutter/material.dart';

class MealDetailScreen extends StatelessWidget {
  static const routerName = "/meal-detail";

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text("$mealId"),
      ),
      body: Container(
        child: Center(
          child: Text(" meal detail screen-$mealId"),
        ),
      ),
    );
  }
}
