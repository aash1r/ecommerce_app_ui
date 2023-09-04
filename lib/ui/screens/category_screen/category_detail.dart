import 'package:flutter/material.dart';
import 'package:smit_mini_project/widgets/category_screen_widgets/custom_container.dart';
import 'package:smit_mini_project/widgets/category_screen_widgets/top_bar.dart';

class CategoryDetails extends StatelessWidget {
  const CategoryDetails({
    this.index,
    super.key,
  });
  final int? index;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(children: [
        Expanded(flex: 1, child: CustomTopBar()),
        Expanded(
          flex: 2,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomContainer(
                    text1: "Meats & Fishes",
                    newcolor: Color(0xFFF9B023),
                    newwidth: 132,
                  ),
                  SizedBox(width: 2),
                  CustomContainer(
                      newwidth: 108,
                      newcolor: Color(0xFFB2BACE),
                      text1: "Vegetables"),
                  SizedBox(width: 2),
                  CustomContainer(
                      newwidth: 71,
                      newcolor: Color(0xFFB2BACE),
                      text1: "Fruits"),
                  SizedBox(width: 2),
                  CustomContainer(
                      newwidth: 75,
                      newcolor: Color(0xFFB2BACE),
                      text1: "Meats"),
                  SizedBox(width: 2),
                  CustomContainer(
                      newwidth: 85,
                      newcolor: Color(0xFFB2BACE),
                      text1: "Chicken"),
                  SizedBox(width: 2),
                  CustomContainer(
                      newwidth: 80,
                      newcolor: Color(0xFFB2BACE),
                      text1: "Dairy"),
                  SizedBox(width: 2),
                  CustomContainer(
                      newwidth: 80,
                      newcolor: Color(0xFFB2BACE),
                      text1: "Grains"),
                  SizedBox(width: 2),
                  CustomContainer(
                      newwidth: 100,
                      newcolor:   Color(0xFFB2BACE),
                      text1: "Beverages"),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
