// import 'package:flutter/material.dart';
// import 'package:smit_mini_project/ui/screens/category_screen/data/item_lists.dart';

// class Shop extends ChangeNotifier {
//   final List<Items> _bignsmallfishe = [
//     Items(price: "32\$", name: "Clown Fish", type: "Popular", rating: "4.9"),
//     Items(price: "21\$", name: "Surmai Fish", type: "Popular", rating: "5.0"),
//     Items(price: "52\$", name: "Tang.HO3", type: "Popular", rating: "4.2"),
//     Items(price: "20\$", name: "Fish.HO3", type: "Discounted", rating: "3.6"),
//     Items(price: "12\$", name: "Lady Fish", type: "Low Price", rating: "3.9"),
//     Items(
//         price: "104\$",
//         name: "Gold Fish",
//         type: "Most Expensive",
//         rating: "4.9"),
//     Items(price: "10\$", name: "Dead Fish", type: "Low Price", rating: "3.9"),
//     // Items(price: "150\$", name: "Dathia Fish", type: "Most Expensive"),
//   ];

//   final List _cart = [];
//   List get bignsmallfish => _bignsmallfishe;
//   List get cart => _cart;

//   void addToCart(foodItem, int quantity) {
//     for (var i = 0; i < quantity; i++) {
//       _cart.add(foodItem);
//     }
//     notifyListeners();
//   }

//   void removeFromCart(food) {
//     _cart.remove(food);
//     notifyListeners();
//   }
// }
