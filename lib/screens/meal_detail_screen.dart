import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_bloc_demo/dummy_data.dart';

class MealDetailScreen extends StatelessWidget {
  static const routerName = "/meal-detail";

  Widget buildContainer(Widget child) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      height: 150,
      width: 300,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)!.settings.arguments as String;
    final selectedMeal =
        DUMMY_MEALS.firstWhere((element) => element.id == mealId);

    return Scaffold(
      appBar: AppBar(
        title: Text("${selectedMeal.title}"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                selectedMeal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            BuildSectionTitle(title: "Ingredients"),
            buildContainer(
              ListView.builder(
                itemBuilder: (ctx, index) => Card(
                  color: Theme.of(context).bottomAppBarColor,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                    child: Text(
                      selectedMeal.ingredients[index],
                    ),
                  ),
                ),
                itemCount: selectedMeal.ingredients.length,
              ),
            ),
            BuildSectionTitle(
              title: "Step",
            ),
            buildContainer(
              NotificationListener<OverscrollIndicatorNotification>(
                onNotification: (OverscrollIndicatorNotification? overscroll) {
                  overscroll!.disallowGlow();
                  return true;
                },
                child: ListView.builder(
                  itemBuilder: (ctx, index) => Column(
                    children: [
                      ListTile(
                        focusColor: Colors.black54,
                        leading: CircleAvatar(
                          child: Text("# ${(index + 1)}"),
                        ),
                        title: Text(
                          selectedMeal.steps[index],
                        ),
                      ),
                      Divider(),
                    ],
                  ),
                  itemCount: selectedMeal.steps.length,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //some thing
          Navigator.of(context).pop(mealId);
        },
        child: Icon(Icons.delete),
      ),
    );
  }
}

class BuildSectionTitle extends StatelessWidget {
  final String title;

  const BuildSectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Text(
        title,
        style: Theme.of(context).textTheme.title,
      ),
    );
  }
}
