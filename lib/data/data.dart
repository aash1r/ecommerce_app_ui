import 'package:flutter/material.dart';
import 'package:smit_mini_project/data/category_data/item_lists.dart';

class Data {
  String name;
  int price;
  String rating;
  int quantity;
  String type;
  Data(
      {required this.name,
      required this.price,
      required this.rating,
      required this.quantity,
      required this.type});

  static List<Color> colors = [
    const Color(0xFFF9B023),
    const Color(0xFF2A4BA0),
    const Color(0xFFF9B023),
  ];

  static final parentoffers = [
    [
      'Get',
      '\n50% OFF',
      "\nOn first 03 orders",
      const Color(0xFFF9B023),
      const Image(image: AssetImage("assets/offer.png"))
    ],
    [
      'Massive',
      "\nSavings",
      "\nAhead",
      const Color(0xFF2A4BA0),
      const Image(image: AssetImage("assets/offer.png"))
    ],
    ['Unbeatable', '\nBargains', "\nAwait", const Color(0xFFF9B023)],
  ];

  static final List<Map<dynamic, dynamic>> items = [
    {"name": "Fresh Lemon", "variants": "Organic","image":"assets/fresh_lemon.png" },
    {"name": "Green Tea", "variants": "Organic"},
    {"name": "Fresh Fish", "variants": "Organic"}
  ];

  static final deals = [
    [
      "\$325",
      "\nOrange Package 1",
      "1 bundle",
      const Color.fromARGB(255, 239, 239, 239)
    ],
    [
      "\$89",
      "Green Tea Package 2",
      " 1 bundle",
      const Color.fromARGB(255, 239, 239, 239)
    ],
    [
      "\$69",
      "Mango deal 1",
      " Buy 1 get 1 free",
      const Color.fromARGB(255, 239, 239, 239)
    ]
  ];

  static final List allcategories = [
    "Fishes",
    "Meats",
    "Vegetables",
    "Fruits",
    "Chicken"
  ];

  static final List<Map<String, String>> category = [
    {"name": "Fishes", "variants": "From Sea"},
    {"name": "Meats", "variants": "Organic"},
    {"name": "Vegetables", "variants": "Organic"},
    {"name": "Fruits", "variants": "Fresh & Organic"},
    {"name": "Chicken", "variants": "Fresh & Organic"},
  ];

  static final meatnfish = [
    {"name": "Big & Small Fishes", "type": "Meats & Fishes"},
    {"name": "Halal Meats", "type": "Meats & Fishes"},
    {"name": "Finger Fish", "type": "Meats & Fishes"},
  ];
  static final veges = [
    {"name": "Tomato", "type": "Vegetables"},
    {"name": "Potato", "type": "Vegetables"},
  ];
  static final fruits = [
    {"name": "Mango", "type": "Fruits"},
    {"name": "Orange", "type": "Fruits"},
  ];

  static final chick = [
    {"name": "Fresh Chicken", "type": "Chicken"},
  ];

  static final allfoods = [meatnfish, meatnfish, veges, fruits, chick];
}

final List<Data> dataItems = [
  Data(
      name: "Fresh Lemon",
      price: 32,
      rating: "3.6",
      type: "Popular",
      quantity: 0),
  Data(
      name: "Green Tea",
      price: 22,
      rating: "4.5",
      type: "Low Price",
      quantity: 0),
  Data(
      name: "Fresh Fish",
      price: 12,
      rating: "3.1",
      type: "Discounted",
      quantity: 0),
];

final List<Data> itemdeals = [
  Data(
      name: "Orange Package 1",
      price: 325,
      rating: "3.9",
      type: "Popular",
      quantity: 0),
  Data(
      name: "Green Tea Package 2",
      price: 89,
      rating: "4.2",
      type: "Low Price",
      quantity: 0),
  Data(
      name: "Mango deal 1",
      price: 69,
      rating: "3.7",
      type: "Discounted",
      quantity: 0),
];
