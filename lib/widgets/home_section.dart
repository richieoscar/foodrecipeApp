import 'package:flutter/material.dart';
import 'package:foodrecipes/model/api_recipe_serialize_model.dart';
import 'package:foodrecipes/model/test.recipe.dart';
import 'package:foodrecipes/style/app_theme.dart';

class HomeSection extends StatelessWidget {
  final String sectionTitle;
  final VoidCallback? onPressed;
  final List<RecipeTest> recipe;
  final Axis? axis;
  final bool? isConnected;
  HomeSection(
      {required this.sectionTitle,
      required this.recipe,
      required this.onPressed,
      this.axis = Axis.horizontal,
      this.isConnected = true});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(sectionTitle, style: AppTheme.lightTextTheme.headline6),
             Container(
               height: 200,
                child: ListView.builder(
                    itemCount: recipe.length,
                    physics: BouncingScrollPhysics(),
                    scrollDirection: axis!,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                return Card(
                  child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Container(
                          width:150,
                          height: 100,
                          
                            child: Image.asset(
                              recipe[index].image!,
                              fit: BoxFit.cover,
                            ),
                            ),
                      
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text( recipe[index].tile!, textAlign:TextAlign.start),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text( recipe[index].sub!, textAlign:TextAlign.start),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              children: [Icon(Icons.star, color: Colors.amber), Text("4.5")],),
                          )
                    ],
                  ),
                );
                    },
                  ),
              ),
            
          ],
        ));
  }
}
