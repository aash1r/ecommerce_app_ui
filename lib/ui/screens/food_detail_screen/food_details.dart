import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smit_mini_project/data/category_data/item_lists.dart';
import 'package:smit_mini_project/ui/screens/cart_screen/cart.dart';
import 'package:smit_mini_project/ui/screens/favourites_screen/favourites.dart';

class FoodDetailsPage extends StatefulWidget {
  const FoodDetailsPage({
    required this.addCartItem,
    super.key,
  });
  final Items addCartItem;

  @override
  State<FoodDetailsPage> createState() => _FoodDetailsPageState();
}

class _FoodDetailsPageState extends State<FoodDetailsPage> {
  bool isFav = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: ListView(
                children: [
                  const Center(
                    child: Image(
                      color: Colors.black,
                      image: AssetImage(
                        "assets/Image Icon.png",
                      ),
                      height: 180,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow.shade800,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(widget.addCartItem.rating),
                      const SizedBox(
                        width: 200,
                      ),
                      IconButton(
                        icon: Icon(
                          isFav ? Icons.favorite : Icons.favorite_outline,
                          color: isFav ? Colors.red : Colors.black,
                        ),
                        onPressed: () {
                          setState(() {
                            isFav = !isFav;
                          });
                          if (isFav) {
                            showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                      content: Text(
                                        "Item has been added to favourites",
                                        style:
                                            GoogleFonts.manrope(fontSize: 15),
                                        textAlign: TextAlign.center,
                                      ),
                                      actions: [
                                        GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                favitems
                                                    .add(widget.addCartItem);
                                              });
                                              Navigator.pop(context);
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          FavouritesScreen(
                                                            favcart: favitems,
                                                          )));
                                            },
                                            child: Container(
                                              height: 22,
                                              width: 130,
                                              decoration: ShapeDecoration(
                                                  color:
                                                      const Color(0xFF2A4BA0),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10))),
                                              child: Text(
                                                "View my favourites",
                                                style: GoogleFonts.manrope(
                                                    fontSize: 11,
                                                    color: Colors.white),
                                                textAlign: TextAlign.center,
                                              ),
                                            ))
                                      ],
                                    ));
                          } else {
                            showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                      content: Text(
                                        "Item has been removed to favourites",
                                        style:
                                            GoogleFonts.manrope(fontSize: 15),
                                        textAlign: TextAlign.center,
                                      ),
                                      actions: [
                                        GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                favitems
                                                    .remove(widget.addCartItem);
                                              });
                                              Navigator.pop(context);
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          FavouritesScreen(
                                                            favcart: favitems,
                                                          )));
                                            },
                                            child: Container(
                                              height: 22,
                                              width: 130,
                                              decoration: ShapeDecoration(
                                                  color:
                                                      const Color(0xFF2A4BA0),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10))),
                                              child: Text(
                                                "View my favourites",
                                                style: GoogleFonts.manrope(
                                                    fontSize: 11,
                                                    color: Colors.white),
                                                textAlign: TextAlign.center,
                                              ),
                                            ))
                                      ],
                                    ));
                          }
                        },
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    widget.addCartItem.name,
                    style: GoogleFonts.dmSerifDisplay(fontSize: 28),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    "Description",
                    style: GoogleFonts.manrope(
                        color: Colors.grey.shade900,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Savor the delicate, tender flesh of Clown Fish, expertly prepared to highlight its natural sweetness and succulence. Each bite is a journey into the vibrant hues of the ocean, with the fish's striking orange and white stripes echoing the beauty of the sea. Our chefs have mastered the art of enhancing the natural flavors while ensuring a buttery, melt-in-your-mouth texture.",
                    style: TextStyle(
                        color: Colors.grey.shade600, fontSize: 14, height: 2),
                  )
                ],
              ),
            ),
          ),
          Container(
            color: const Color(0xFF2A4BA0),
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.addCartItem.price,
                        style: GoogleFonts.manrope(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: const Color(0xFF2A4BA0),
                                borderRadius: BorderRadius.circular(40)),
                            child: IconButton(
                              onPressed: () {
                                {
                                  if (widget.addCartItem.quantity > 0) {
                                    setState(() {
                                      widget.addCartItem.quantity--;
                                    });
                                  }
                                }
                              },
                              icon: const Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 40,
                            child: Center(
                              child: Text(
                                // quant.toString(),
                                widget.addCartItem.quantity.toString(),
                                style: GoogleFonts.manrope(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: const Color(0xFF2A4BA0),
                                borderRadius: BorderRadius.circular(40)),
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  widget.addCartItem.quantity++;
                                });
                              },
                              icon: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    width: 800,
                    height: 70,
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: const Color.fromARGB(255, 167, 177, 202),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    child: GestureDetector(
                      onTap: () async {
                        if (cartItems.contains(widget.addCartItem)) {
                          await Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CartScreen(
                                        products: cartItems,
                                        quant: widget.addCartItem.quantity,
                                      )));
                        } else {
                          setState(() {
                            cartItems.add(widget.addCartItem);
                          });
                          await Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CartScreen(
                                        products: cartItems,
                                        quant: widget.addCartItem.quantity,
                                      )));
                        }
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Text(
                              "Add to Cart",
                              style: GoogleFonts.manrope(color: Colors.white),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
