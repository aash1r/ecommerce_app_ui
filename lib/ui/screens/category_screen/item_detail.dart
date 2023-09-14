import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smit_mini_project/ui/screens/cart_screen/cart.dart';
import 'package:smit_mini_project/data/category_data/item_lists.dart';

import '../food_detail_screen/food_details.dart';

class ItemDetails extends StatefulWidget {
  const ItemDetails({
    super.key,
    this.selected,
    this.selectedCategory,
  });

  final String? selected;
  // ignore: prefer_typing_uninitialized_variables
  final selectedCategory;

  @override
  State<ItemDetails> createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  static final List<String> typeof = [
    "Popular",
    "Low Price",
    "Discounted",
    "Most Expensive"
  ];

  List<String> selectedtype = [];
  @override
  Widget build(BuildContext context) {
    final filterTypes = widget.selectedCategory.where((items) {
      return selectedtype.isEmpty || selectedtype.contains(items.type);
    }).toList();

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Icon(Icons.arrow_back_ios_new_outlined),
                    Text(widget.selected ?? ''),
                    const Icon(Icons.search),
                    GestureDetector(
                      onTap: () async {
                        await Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CartScreen(
                                      products: cartItems,
                                    )));
                        setState(() {});
                      },
                      child: const Icon(
                        Icons.shopping_cart_checkout_outlined,
                        size: 24,
                      ),
                    ),
                  ],
                )),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: typeof
                      .map((type) => Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5.0, vertical: 10),
                            child: FilterChip(
                                label: Text(type),
                                selectedColor: const Color(0xFFF9B023),
                                selected: selectedtype.contains(type),
                                onSelected: (selected) {
                                  setState(() {
                                    if (selected) {
                                      selectedtype.add(type);
                                    } else {
                                      selectedtype.remove(type);
                                    }
                                  });
                                }),
                          ))
                      .toList(),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemCount: filterTypes.length,
                itemBuilder: (context, index) {
                  final items = filterTypes[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 150,
                        width: 120,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          color: const Color.fromARGB(255, 239, 239, 239),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Column(
                              children: [
                                Image(
                                    height: 70,
                                    image: AssetImage("assets/Image Icon.png")),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  FoodDetailsPage(
                                                    addCartItem: items,
                                                  )));
                                      // cartItems.add(
                                      //     allProducts[index][index].toString());
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: const CircleAvatar(
                                        backgroundColor: Color(0xFF2A4BA0),
                                        foregroundColor:
                                            Color.fromARGB(255, 253, 250, 250),
                                        radius: 15,
                                        child: Icon(
                                          Icons.add,
                                          size: 20,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  items.name,
                                  style: GoogleFonts.manrope(
                                      color: const Color(0xFF1E222B),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      height: 1.43),
                                ),
                                Text(
                                  items.price.toString(),
                                  style: GoogleFonts.manrope(
                                      color: const Color(0xFF61697C)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
