import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:smit_mini_project/data/category_data/item_lists.dart';
import 'package:smit_mini_project/ui/screens/favourites_screen/favourites.dart';
import 'package:smit_mini_project/ui/screens/orders_screen/orders_screen.dart';
import '../main_screen.dart';
import '../../category_screen/category.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;
  final screensWidgets = [
    const MainScreen(),
    const CategoriesScreen(),
    FavouritesScreen(
      favcart: favitems,
    ),
    OrdersScreen(
      products: cartItems,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screensWidgets[currentIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 0),
        child: CurvedNavigationBar(
            animationDuration: const Duration(milliseconds: 300),
            buttonBackgroundColor: const Color(0xFF2A4BA0),
            color: const Color(0xFF2A4BA0),
            index: currentIndex,
            onTap: (int newindex) {
              setState(() {
                currentIndex = newindex;
              });
            },
            backgroundColor: Colors.transparent,
            items: const [
              Icon(
                Icons.home_outlined,
                color: Colors.white54,
              ),
              Icon(
                Icons.category_outlined,
                color: Colors.white54,
              ),
              Icon(
                Icons.favorite_outline,
                color: Colors.white54,
              ),
              Icon(
                Icons.more_outlined,
                color: Colors.white54,
              ),
            ]),
      ),
    );
  }
}
