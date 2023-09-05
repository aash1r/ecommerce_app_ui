import 'package:flutter/material.dart';
import 'package:smit_mini_project/ui/screens/category_screen/widgets/grid_view.dart';
import 'package:smit_mini_project/ui/screens/category_screen/widgets/top_bar.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          CustomTopBar(),
          CustomGridView(),
        ],
      ),
    );
  }
}
