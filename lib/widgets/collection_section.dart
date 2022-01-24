import 'package:flutter/material.dart';
import 'package:foodrecipes/model/api_recipe_serialize_model.dart';
import 'package:foodrecipes/model/test.recipe.dart';
import 'package:foodrecipes/style/app_theme.dart';

class CollectionSection extends StatelessWidget {
  final String sectionTitle;
  final VoidCallback? onPressed;
  final List<RecipeTest> recipe;
  final Axis? axis;
  final bool? isConnected;
  CollectionSection(
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
          width: double.infinity,
          height: 150,
          child: ListView.builder(
            itemCount: recipe.length,
            physics: BouncingScrollPhysics(),
            scrollDirection: axis!,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Card(
                child: Row(
                  children: [
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 10),
                       child: CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage(recipe[index].image!),
                          //  Image.asset(
                          //   recipe[index].image!,
                          //   fit: BoxFit.fill,
                          // ),
                        ),
                     ),
                    
                  
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(recipe[index].localDishName!,
                            style:AppTheme.lightTextTheme.subtitle1,
                                textAlign: TextAlign.start),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal:3, vertical: 5),
                            child: Container(
                              width: 200,
                              child: Text(recipe[index].description!,
                              softWrap: true,
                              maxLines: 5,
                            
                             style: AppTheme.lightTextTheme.subtitle2,
                                  textAlign: TextAlign.start),
                            ),
                          ),
                        ],
                      ),
                    ),
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
