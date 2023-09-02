import 'package:flutter/material.dart';
import 'package:smit_mini_project/ui/screens/intro_screens/custom_screen.dart';
import 'screen2.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final controllerr = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controllerr,
        children: [
          CustomScreen(
            controllerr: controllerr,
            text1: "Your holiday\nshopping\ndelivered to Screen",
            text3: "one",
            text2:
                "There's something for everyone\nto enjoy with Sweet Shop\nFavourites Screen 1",
          ),
          ScreenTwo(controllerr: controllerr,),
        ],
      ),
    );
  }
}
