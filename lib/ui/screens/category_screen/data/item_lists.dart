class Items {
  final String price;
  final String type;
  final String name;

  Items({required this.price, required this.type, required this.name});

  static final List<String> typeof = [
    "Popular",
    "Low Price",
    "Discounted",
    "Most Expensive"
  ];
}

final List<Items> bignsmallfish = [
  Items(price: "32\$", name: "Clown Fish", type: "Popular"),
  Items(price: "21\$", name: "Surmai Fish", type: "Popular"),
  Items(price: "52\$", name: "Tang.HO3", type: "Popular"),
  Items(price: "20\$", name: "Fish.HO3", type: "Discounted"),
  Items(price: "12\$", name: "Lady Fish", type: "Low Price"),
  Items(price: "104\$", name: "Gold Fish", type: "Most Expensive"),
  Items(price: "10\$", name: "Dead Fish", type: "Low Price"),
  // Items(price: "150\$", name: "Dathia Fish", type: "Most Expensive"),
];
final List<Items> halalmeat = [
  Items(price: "32\$", name: "Fresh Meat", type: "Popular"),
  Items(price: "20\$", name: "Mutton", type: "Popular"),
  Items(price: "11\$", name: "Mutton Chops", type: "Low Price"),
  Items(price: "40\$", name: "Karahii", type: "Discounted"),
  Items(price: "126\$", name: "Beef", type: "Most Expensive"),
];

final List<Items> fingerf = [
  Items(price: "291\$", name: "Fish sticks", type: "Most Expensive"),
  Items(price: "49\$", name: "White Fish", type: "Popular"),
  Items(price: "26\$", name: "Pangash Fish", type: "Low Price"),
  Items(price: "50\$", name: "Pegasus Fish", type: "Discounted"),
  Items(price: "300\$", name: "Chunky Finger Fish", type: "Most Expensive"),
  Items(price: "30\$", name: "Four Finger Fish", type: "Low Price"),
  Items(price: "57\$", name: "Special Fish D07 ", type: "Discounted"),
  Items(price: "10\$", name: "Finger Fish H04", type: "Low Price"),
];

final List<Items> tomato = [
  Items(price: "91\$", name: "Cherry Tomatoes", type: "Most Expensive"),
  Items(price: "29\$", name: "Roma Tomatoes", type: "Popular"),
  Items(price: "26\$", name: "Better Boy", type: "Low Price"),
  Items(price: "68\$", name: "San Marzano Tomato", type: "Discounted"),
];

final List<Items> potato = [
  Items(price: "71\$", name: "Vitelotte", type: "Most Expensive"),
  Items(price: "99\$", name: "Kennebec potato", type: "Popular"),
  Items(price: "16\$", name: "Laura potato", type: "Low Price"),
  Items(price: "88\$", name: "Ratte potato", type: "Discounted"),
];

final List<Items> mango = [
  Items(price: "31\$", name: "Ripe Mango", type: "Most Expensive"),
  Items(price: "19\$", name: "Juicy Mango", type: "Popular"),
];

final List<Items> orange = [
  Items(price: "21\$", name: "Pulpy orange", type: "Most Expensive"),
  Items(price: "29\$", name: "Orange 2", type: "Popular"),
];

final List<Items> freshchick = [
  Items(price: "11\$", name: "leg piece", type: "Most Expensive"),
  Items(price: "16\$", name: "Chest piece", type: "Popular"),
];

final allProducts = [
  bignsmallfish,
  halalmeat,
  fingerf,
  tomato,
  potato,
  mango,
  orange,
  freshchick
];
