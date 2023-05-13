import 'package:flutter/material.dart';


import 'Ingredient.dart';

class Meal {
  final int idMeal;
  final String strMeal;
  final String strInstruction;
  final String strMealThumb;
  final String excerpt;

  final List<Ingredient> ingredients;

  const Meal(
      {required this.idMeal,
      required this.strMeal,
      required this.strInstruction,
      required this.ingredients,
      required this.strMealThumb,
      required this.excerpt});

  factory Meal.fromJson(Map<String, dynamic> json) {
    List<Ingredient> ingredients = List.empty(growable: true);
    for (int i = 1; i <= 20; i++) {
      debugPrint((json["strIngredient$i"].toString().isEmpty).toString());
      if (json["strIngredient$i"].toString().isEmpty) break;
      if (json["strIngredient$i"].toString().isNotEmpty) {
        ingredients.add(
          Ingredient(
            strName: json["strIngredient$i"],
            strMeasure: json["strMeasure$i"],
          ),
        );
      }
    }

    String instruction = json["strInstructions"] ?? "";

    String excerpt = instruction.length > 100
        ? "${instruction.substring(0, 100)}..."
        : instruction;

    return Meal(
      idMeal: int.parse(json["idMeal"]),
      strInstruction: json["strInstructions"],
      strMeal: json["strMeal"],
      ingredients: ingredients,
      strMealThumb: json["strMealThumb"],
      excerpt: excerpt,
    );
  }
}
