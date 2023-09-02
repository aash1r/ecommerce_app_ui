import 'package:flutter/material.dart';
import 'package:smit_mini_project/ui/screens/intro_screens/custom_screen.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key, this.text1, this.text2, this.controllerr});

  final PageController? controllerr;
  final String? text1;
  final String? text2;
  @override
  Widget build(BuildContext context) {
    return CustomScreen(
      controllerr: controllerr,
      text1: "Your holiday\nshopping\ndelivered to Screen",
      text3: "two",
      text2:
          "There's something for everyone\nt o enjoy with Sweet Shop\nFavourites Screen 2",
    );
  }
}
