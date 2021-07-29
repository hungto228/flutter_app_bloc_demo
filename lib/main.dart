import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_bloc_demo/screens/category_Screens.dart';
import 'package:flutter_app_bloc_demo/screens/category_meals_screen.dart';
import 'package:flutter_app_bloc_demo/screens/meal_detail_screen.dart';
import 'package:flutter_app_bloc_demo/screens/tabs_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: "Raleway",
        textTheme: ThemeData.light().textTheme.copyWith(
              body1: TextStyle(
                color: Color.fromRGBO(20, 52, 51, 1),
              ),
              title: TextStyle(
                fontSize: 20,
                fontFamily: "RobotoCondensed",
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      // home: CategoriesScreen(),
      initialRoute: "/",
      routes: {
        "/": (ctx) => TabsScreen(),
        CategoryMealsScreen.routerName: (ctx) => CategoryMealsScreen(),
        MealDetailScreen.routerName: (ctx) => MealDetailScreen(),
      },
      onGenerateRoute: (settings) {
        print(settings.arguments);
        // if(settings.name=="/meal-detail"){
        //   return ...;
        // }else if( settings.name=="/some thing-else"){
        //   return ...;
        // }
        // return MaterialPageRoute(
        //   builder: (ctx) => CategoriesScreen(),
        // );
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (ctx) => CategoryMealsScreen(),
        );
      },
    );
  }
}
