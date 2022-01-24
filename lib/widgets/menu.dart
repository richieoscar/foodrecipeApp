import 'package:flutter/material.dart';
import 'package:foodrecipes/constants/colors.dart';
import 'package:foodrecipes/style/app_theme.dart';

class Menu extends StatelessWidget {
  double radius = 20;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              CircleAvatar(
                radius: radius,
                backgroundColor: KMenuColor1,
              ),
              Text(" New",style: AppTheme.lightTextTheme.caption),
            ],
          ),
          Column(
            children: [
              CircleAvatar(
                radius: radius,
                backgroundColor: KMenuColor2,
              ),
              Text(" Trending",style: AppTheme.lightTextTheme.caption),
            ],
          ),
          Column(
            children: [
              CircleAvatar(
                radius: radius,
                backgroundColor: KMenuColor3,
              ),
              Text(" Best Seller",style: AppTheme.lightTextTheme.caption),
            ],
          ),
          Column(
            children: [
              CircleAvatar(
                radius: radius,
                backgroundColor: KMenuColor4,
              ),
              Text("Today", style: AppTheme.lightTextTheme.caption),
            ],
          ),
        ],
      ),
    );
  }
}
