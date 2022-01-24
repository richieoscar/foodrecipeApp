import 'package:flutter/material.dart';
import 'package:foodrecipes/screens/home.dart';
import 'package:foodrecipes/style/app_theme.dart';
import 'package:foodrecipes/widgets/image_slider.dart';
import 'package:foodrecipes/widgets/menu.dart';
import 'package:foodrecipes/widgets/section.dart';

void main() {
  runApp(const RecipeApp());
}

final theme = AppTheme.lightTheme();

class RecipeApp extends StatelessWidget {
  const RecipeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Recipe App", 
    debugShowCheckedModeBanner: false,
    theme: theme, home: Home());
  }
}


