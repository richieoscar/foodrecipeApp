import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodrecipes/model/api_recipe_serialize_model.dart';
import 'package:foodrecipes/model/test.recipe.dart';
import 'package:foodrecipes/widgets/collection_section.dart';
import 'package:foodrecipes/widgets/home_section.dart';
import 'package:foodrecipes/widgets/image_slider.dart';
import 'package:foodrecipes/widgets/menu.dart';
import 'package:foodrecipes/widgets/search.dart';
import 'package:foodrecipes/widgets/section.dart';

class Home extends StatelessWidget {
  TextEditingController _searchController = TextEditingController();

  var list = [
    RecipeTest(
        image: "assets/recipe1.jpg",
        tile: "Salad",
        sub: "Dinner",
        localDishName: "African Salad",
        description:
            "This is one of the prestigious African recipe for making the famous Salad"),
    RecipeTest(
        image: "assets/recipe2.jpg",
        tile: "Salad",
        sub: "Dinner",
        localDishName: "Mexico Taco",
        description:
            "The Taco recipe is one the Mexican recipes that popular in making the Tacos. Tacos is native Mexican Snack"),
    RecipeTest(
        image: "assets/recipe3.jpg",
        tile: "Salad",
        sub: "Dinner",
        localDishName: "Chines Sushi Recipe",
        description:
            "This  recipe is one the Chines famous recipes widely popular in making the Sushi. Sushi is native to the Chinese"),
    RecipeTest(
        image: "assets/recipe4.jpg",
        tile: "Salad",
        sub: "Dinner",
        localDishName: "African Salad",
        description:
            "This is one of the prestigious African recipe for making the famous Salad"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Search(controller: _searchController),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ImageSlider(),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Menu(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: HomeSection(
                  sectionTitle: "Recommended", recipe: list, onPressed: () {}),
            ),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: HomeSection(
                  sectionTitle: "Popular Recipes",
                  recipe: list,
                  onPressed: () {}),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CollectionSection(
                  sectionTitle: "Collections", recipe: list, onPressed: () {}),
            ),
           
          ],
        ),
      ),
    );
  }
}
