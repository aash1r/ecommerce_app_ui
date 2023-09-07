class Product {
  final String name;
  final String category;

  Product({required this.name, required this.category});

  static final List<String> categories = [
    "Meats & Fishes",
    "Vegetables",
    "Fruits",
    "Chicken"
  ];

  static final productNames = [
    "Big and Small Fishes",
    "Halal Meats",
    "Finger Fish",
    "Tomato",
    "Potato",
    "Mango",
    "Orange",
    "Fresh Chicken"
  ];
}

final List<Product> productList = [
  Product(name: "Big & Small Fishes", category: "Meats & Fishes"),
  Product(name: "Halal Meats", category: "Meats & Fishes"),
  Product(name: "Finger Fish", category: "Meats & Fishes"),
  Product(name: "Tomato", category: "Vegetables"),
  Product(name: "Potato", category: "Vegetables"),
  Product(name: "Mango", category: "Fruits"),
  Product(name: "Orange", category: "Fruits"),
  Product(name: "Fresh Chicken", category: "Chicken")
];
