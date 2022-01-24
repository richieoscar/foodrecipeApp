import 'package:flutter/material.dart';
import 'package:foodrecipes/style/app_theme.dart';

class Section extends StatelessWidget {
  final String? image;
  final String? title;
  final String? subTitle;

  Section({this.image, this.title, this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 10,
      
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        
          children: [
            Container(
              width: double.infinity,
              height: 150,
              child: Image.asset(
                image!,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              child: Text(
                title ?? "",
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Text(
                subTitle ?? "",
                style: AppTheme.lightTextTheme.subtitle2,
              ),
            ),
            
               Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Icon(Icons.star, color: Colors.amber),
                  ),
                  Text("4.5")
                ],
              
            )
          ],
        
      ),
    );
  }
}
