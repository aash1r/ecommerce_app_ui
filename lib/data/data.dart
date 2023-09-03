import 'package:flutter/material.dart';

class Data {
  static List<Color> colors = [
    const Color(0xFFF9B023),
    const Color(0xFF2A4BA0),
    const Color(0xFFF9B023),
  ];

  static final parentoffers = [
    ['Get', '\n50% OFF', "\nOn first 03 orders", const Color(0xFFF9B023)],
    ['Massive', "\nSavings", "\nAhead", const Color(0xFF2A4BA0)],
    ['Unbeatable', '\nBargains', "\nAwait", const Color(0xFFF9B023)],
  ];

  static final List<Map<String, String>> items = [
    {"name": "Fresh Lemon", "variants": "Organic"},
    {"name": "Green Tea", "variants": "Organic"},
    {"name": "Fresh Fish", "variants": "Organic"}
  ];

  static final savings = [
    ["346", " USD", "\nYour total savings", const Color(0xFFF9B023)],
    ["215", " HRS", "\nYour time saved", const Color(0xFF2A4BA0)],
    ["24", " HRS", "\nOpen for shopping", const Color(0xFFF9B023)]
  ];

  static final deals = [
    ["\$325", "\nOrange Package 1", "1 bundle", Colors.grey],
    ["\$89", "Green Tea Package 2", " 1 bundle", Colors.grey],
    ["\$69", "Mango deal 1", " Buy 1 get 1 free", Colors.grey]
  ];

  static final List<Map<String, String>> category = [
    {"name": "Fishes", "variants": "From Sea"},
    {"name": "Meats", "variants": "Organic"},
    {"name": "Vegetables", "variants": "Organic"},{"name": "Fruits", "variants": "Fresh & Organic"},
    {"name": "Chicken", "variants": "Fresh & Organic"},{"name": "Dairy", "variants": "Fresh"},
    {"name": "Grains", "variants": "Fresh & Organic"},{"name": "Beverages", "variants": "Nutritional"}
  ];
}



  // final List<MapEntry<String, dynamic>> keyValuePairs =
  //     myTitleMap.entries.toList();

  // myTitleMap.forEach((key, value) {
  //   print("$key, $value");


    // final titlesList = [];

    // for (var entry in myTitleMap.entries) {
    //   titlesList.add(entry.key);
    //   titlesList.add(entry.value);
    // }
    // for (var element in titlesList) {
    //   print(element);
    // }
  

