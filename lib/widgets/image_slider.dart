import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageSlider extends StatelessWidget {
  ImageSlider({Key? key}) : super(key: key);

  final list = [
    "assets/recipe1.jpg",
    "assets/recipe2.jpg",
    "assets/recipe3.jpg",
    "assets/recipe1.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: CarouselSlider.builder(
        itemCount: list.length,
        options: CarouselOptions(
            autoPlay: true, aspectRatio: 2.5, enlargeCenterPage: true),
        itemBuilder: (context, index, realIdx) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            width: double.infinity,
            child: Image.asset(
              list[index],
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
