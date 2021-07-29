import 'package:flutter/material.dart';
import 'package:flutter_app_bloc_demo/models/category_model.dart';
import 'package:flutter_app_bloc_demo/models/meal_model.dart';

const DUMMY_CATEGORIES = const [
  Category(id: "c1", title: "vietnam", color: Colors.red),
  Category(id: "c2", title: "chinese", color: Colors.yellow),
  Category(id: "c3", title: "thailan", color: Colors.blue),
];

const DUMMY_MEALS = const [
  Meal(
      id: "c1",
      categories: ["c1", "c2"],
      title: "title",
      imageUrl:
          "https://image.shutterstock.com/image-vector/cartoon-thumps-up-like-sign-260nw-1454100671.jpg",
      ingredients: [
        "ingredients1",
        "ingredients2",
        "ingredients2",
        "ingredients2",
        "ingredients2",
        "ingredients2",
        "ingredients2",
        "ingredients2",
        "ingredients2"
      ],
      steps: [
        "steps1",
        "steps2",
        "steps2",
        "steps2",
        "steps2",
        "steps2",
        "steps2"
      ],
      duration: 20,
      complexity: Complexity.Simple,
      affordability: Affordability.Affordable,
      isGlutenFree: true,
      isVegan: true,
      isVegatarian: false),
];
