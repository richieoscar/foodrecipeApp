import 'package:flutter/material.dart';
import 'package:foodrecipes/constants/colors.dart';

class Search extends StatelessWidget {
  TextEditingController controller = TextEditingController();

  Search({required this.controller});

  @override
  Widget build(BuildContext Ccontext) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: KSearchBgColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: controller,
                textInputAction: TextInputAction.search,
                onSubmitted: (value) {
                  _performSearchQuery(value);
                },
                // cursorColor: AppColors.backgroundColor,
                decoration: InputDecoration(
                  prefixIcon: IconButton(
                    onPressed: () {
                      _performSearchQuery(controller.text);
                    },
                    icon: Icon(Icons.search_rounded, color: KSearchIconCOlor),
                  ),
                  border: InputBorder.none,

                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  hintText: "Search Recipes",
                  // label:  Padding(
                  //   padding: EdgeInsets.all(8.0),
                  //   child:  Text("Search Books", style: AppStyle.mediumText,),
                  // ),
                ),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Expanded(child: Icon(Icons.search_rounded, color: AppColors.searcIconColor)),
            // ),
          ],
        ),
      ),
    );
  }

  void _performSearchQuery(text) {}
}
