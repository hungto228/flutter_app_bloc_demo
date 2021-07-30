import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_bloc_demo/dummy_data.dart';
import 'package:flutter_app_bloc_demo/models/meal_model.dart';
import 'package:flutter_app_bloc_demo/widgets/meal_item.dart';

class CategoryMealsScreen extends StatefulWidget {
  static const routerName = "/category-meals";
  late List<Meal> avilableMeals;
  CategoryMealsScreen(this.avilableMeals);

  @override
  _CategoryMealsScreenState createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {
  late String? categoryTitle;
  late List<Meal> displayedMeals;
  var _loadedInitData = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (!_loadedInitData) {
      final routerArgs =
          ModalRoute.of(context)!.settings.arguments as Map<String, String>;
      categoryTitle = routerArgs["title"];
      final catagoryId = routerArgs["id"];
      displayedMeals = widget.avilableMeals.where((meal) {
        return meal.categories.contains(catagoryId);
      }).toList();
      _loadedInitData = true;
    }
    super.didChangeDependencies();
  }

  void _removeMeal(String mealId) {
    setState(() {
      displayedMeals.removeWhere((element) => element.id == mealId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle!),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MeaslItem(
            id: displayedMeals[index].id,
            title: displayedMeals[index].title,
            imageUrl: displayedMeals[index].imageUrl,
            duration: displayedMeals[index].duration,
            complexity: displayedMeals[index].complexity,
            affordability: displayedMeals[index].affordability,
            removeIteml: _removeMeal,
          );
        },
        itemCount: displayedMeals.length,
      ),
    );
  }
}
