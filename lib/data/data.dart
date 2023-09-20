import 'package:flutter/material.dart';

class Data {
  String name;
  int price;
  String rating;
  int quantity;
  String type;
  String image;
  Data(
      {required this.name,
      required this.price,
      required this.rating,
      required this.quantity,
      required this.type,
      required this.image});

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

  static final List<Map<String, String>> items = [
    {
      "name": "Fresh Lemon",
      "variants": "Organic",
      "image": "assets/fresh_lemon.png"
    },
    {
      "name": "Green Tea",
      "variants": "Organic",
      "image": "assets/green_tea.png"
    },
    {
      "name": "Fresh Fish",
      "variants": "Organic",
      "image": "assets/fresh_fish.png"
    }
  ];

  static final deals = [
    [
      "\$325",
      "\nOrange Package 1",
      "1 bundle",
      const Color.fromARGB(255, 239, 239, 239),
      "assets/orange_pckg.png"
    ],
    [
      "\$89",
      "Green Tea Package 2",
      " 1 bundle",
      const Color.fromARGB(255, 239, 239, 239),
      "assets/green_pckg.png"
    ],
    [
      "\$69",
      "Mango deal 1",
      " Buy 1 get 1 free",
      const Color.fromARGB(255, 239, 239, 239),
      "assets/mango_deal.png"
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
    {
      "name": "Fishes",
      "variants": "From Sea",
      "image": "assets/fresh_fish.png"
    },
    {"name": "Meats", "variants": "Organic", "image": "assets/meats.png"},
    {"name": "Vegetables", "variants": "Organic", "image": "assets/vege.png"},
    {
      "name": "Fruits",
      "variants": "Fresh & Organic",
      "image": "assets/fruits.png"
    },
    {
      "name": "Chicken",
      "variants": "Fresh & Organic",
      "image": "assets/chicken.png"
    },
  ];

  static final meatnfish = [
    {
      "name": "Big & Small Fishes",
      "type": "Meats & Fishes",
      "image": "assets/bignsmall.png"
    },
    {
      "name": "Halal Meats",
      "type": "Meats & Fishes",
      "image": "assets/halal.png"
    },
    {
      "name": "Finger Fish",
      "type": "Meats & Fishes",
      "image": "assets/finger.png"
    },
  ];
  static final veges = [
    {"name": "Tomato", "type": "Vegetables", "image": "assets/tomato.png"},
    {"name": "Potato", "type": "Vegetables", "image": "assets/potato.png"},
  ];
  static final fruits = [
    {"name": "Mango", "type": "Fruits", "image": "assets/mango_deal.png"},
    {"name": "Orange", "type": "Fruits", "image": "assets/orange_pckg.png"},
  ];

  static final chick = [
    {
      "name": "Fresh Chicken",
      "type": "Chicken",
      "image": "assets/fresh_chick.png"
    },
  ];

  static final allfoods = [meatnfish, meatnfish, veges, fruits, chick];
}

final List<Data> dataItems = [
  Data(
      name: "Fresh Lemon",
      price: 32,
      rating: "3.6",
      type: "Popular",
      quantity: 0,
      image: "assets/fresh_lemon.png"),
  Data(
      name: "Green Tea",
      price: 22,
      rating: "4.5",
      type: "Low Price",
      quantity: 0,
      image: "assets/green_tea.png"),
  Data(
      name: "Fresh Fish",
      price: 12,
      rating: "3.1",
      type: "Discounted",
      quantity: 0,
      image: "assets/fresh_fish.png"),
];

final List<Data> itemdeals = [
  Data(
    name: "Orange Package 1",
    price: 325,
    rating: "3.9",
    type: "Popular",
    quantity: 0,
    image: "assets/orange_pckg.png",
  ),
  Data(
    name: "Green Tea Package 2",
    price: 89,
    rating: "4.2",
    type: "Low Price",
    quantity: 0,
    image: "assets/green_pckg.png",
  ),
  Data(
      name: "Mango deal 1",
      price: 69,
      rating: "3.7",
      type: "Discounted",
      quantity: 0,
      image: "assets/mango_deal.png",)
];
