
class Items {
  int? price;
  String? type;
  String? name;
  String? rating;
  int? quantity;
  String? image;

  Items(
      {this.quantity, this.price, this.type, this.name, this.rating, this.image});

  static final List<String> typeof = [
    "Popular",
    "Low Price",
    "Discounted",
    "Most Expensive"
  ];
}

final List<Items> bignsmallfish = [
  Items(
    price: 32,
    name: "Clown Fish",
    type: "Popular",
    quantity: 0,
    rating: "4.9",
    image: "assets/clownfish.png",
  ),
  Items(
    price: 21,
    name: "Surmai Fish",
    type: "Popular",
    rating: "5.0",
    quantity: 0,
    image: "assets/surmaifish.png"
  ),
  Items(
    price: 52,
    name: "Tang.HO3",
    type: "Popular",
    rating: "4.2",
    quantity: 0,
    image: "assets/tangfish.png"
  ),
  Items(
    price: 20,
    name: "Fish.HO3",
    type: "Discounted",
    rating: "3.6",
    quantity: 0,
    image: "assets/fishho3.png"
  ),
  Items(
    price: 12,
    name: "Lady Fish",
    type: "Low Price",
    rating: "3.9",
    quantity: 0,
    image: "assets/ladyfish.png"
  ),
  Items(
    price: 104,
    name: "Gold Fish",
    type: "Most Expensive",
    rating: "4.9",
    quantity: 0,
    image: "assets/goldfish.png"
  ),
  Items(
    price: 10,
    name: "Dead Fish",
    type: "Low Price",
    rating: "3.9",
    quantity: 0,
    image: "assets/deadfish.png"
  ),
  // Items(price: "150\$", name: "Dathia Fish", type: "Most Expensive"),
];

final List<Items> halalmeat = [
  Items(
    price: 32,
    name: "Fresh Meat",
    type: "Popular",
    rating: "4.9",
    quantity: 0,
    image: "assets/steak.png"
  ),
  Items(
    price: 20,
    name: "Mutton",
    type: "Popular",
    rating: "4.9",
    quantity: 0,
    image: "assets/mutton.png"
  ),
  Items(
    price: 11,
    name: "Mutton Chops",
    type: "Low Price",
    rating: "4.9",
    quantity: 0,
    image: "assets/chops.png"
  ),
  Items(
    price: 40,
    name: "Karahii",
    type: "Discounted",
    rating: "3.7",
    quantity: 0,
    image: "assets/karahi.png"
  ),
  Items(
    price: 126,
    name: "Beef",
    type: "Most Expensive",
    rating: "4.6",
    quantity: 0,
    image: "assets/beef.png"
  ),
];

final List<Items> fingerf = [
  Items(
    price: 291,
    name: "Fish sticks",
    type: "Most Expensive",
    rating: "4.8",
    quantity: 0,
    image: "assets/fishsticks.png"
  ),
  Items(
    price: 49,
    name: "White Fish",
    type: "Popular",
    rating: "4.4",
    quantity: 0,
    image: "assets/whitefish.png"
  ),
  Items(
    price: 26,
    name: "Pangash Fish",
    type: "Low Price",
    rating: "3.2",
    quantity: 0,
    image: "assets/pangashfish.png"
  ),
  Items(
    price: 50,
    name: "Pegasus Fish",
    type: "Discounted",
    rating: "3.5",
    quantity: 0,
    image: "assets/pegasusfish.png"
  ),
  Items(
    price: 300,
    name: "Chunky Finger Fish",
    type: "Most Expensive",
    rating: "4.6",
    quantity: 0,
    image: "assets/chunkyfish.png"
  ),
  Items(
    price: 30,
    name: "Four Finger Fish",
    type: "Low Price",
    rating: "3.9",
    quantity: 0,
    image: "assets/fourfinger.png"
  ),
  Items(
    price: 57,
    name: "Special Fish D07 ",
    type: "Discounted",
    rating: "3.4",
    quantity: 0,
    image: "assets/specialfish.png"
  ),
  Items(
    price: 10,
    name: "Finger Fish H04",
    type: "Low Price",
    rating: "3.2",
    quantity: 0,
    image: "assets/fingerfish_ho4.png"
  ),
];

final List<Items> tomato = [
  Items(
    price: 91,
    name: "Cherry Tomatoes",
    type: "Most Expensive",
    rating: "4.9",
    quantity: 0,
    
  ),
  Items(
    price: 29,
    name: "Roma Tomatoes",
    type: "Popular",
    rating: "5.0",
    quantity: 0,
  ),
  Items(
    price: 26,
    name: "Better Boy",
    type: "Low Price",
    rating: "3.4",
    quantity: 0,
  ),
  Items(
    price: 68,
    name: "San Marzano Tomato",
    type: "Discounted",
    rating: "3.9",
    quantity: 0,
  ),
];

final List<Items> potato = [
  Items(
    price: 71,
    name: "Vitelotte",
    type: "Most Expensive",
    rating: "4.7",
    quantity: 0,
  ),
  Items(
    price: 99,
    name: "Kennebec potato",
    type: "Popular",
    rating: "3.9",
    quantity: 0,
  ),
  Items(
    price: 16,
    name: "Laura potato",
    type: "Low Price",
    rating: "4.5",
    quantity: 0,
  ),
  Items(
    price: 88,
    name: "Ratte potato",
    type: "Discounted",
    rating: "4.2",
    quantity: 0,
  ),
];

final List<Items> mango = [
  Items(
    price: 31,
    name: "Ripe Mango",
    type: "Most Expensive",
    rating: "4.1",
    quantity: 0,
  ),
  Items(
    price: 19,
    name: "Juicy Mango",
    type: "Popular",
    rating: "3.3",
    quantity: 0,
  ),
];

final List<Items> orange = [
  Items(
    price: 21,
    name: "Pulpy orange",
    type: "Most Expensive",
    rating: "3.9",
    quantity: 0,
  ),
  Items(
    price: 29,
    name: "Orange 2",
    type: "Popular",
    rating: "2.8",
    quantity: 0,
  ),
];

final List<Items> freshchick = [
  Items(
    price: 11,
    name: "leg piece",
    type: "Most Expensive",
    rating: "3.7",
    quantity: 0,
  ),
  Items(
    price: 16,
    name: "Chest piece",
    type: "Popular",
    rating: "2.9",
    quantity: 0,
  ),
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

final cartItems = [];

final favitems = [];
