import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smit_mini_project/data/category_data/item_lists.dart';
import 'package:smit_mini_project/ui/screens/cart_screen/cart.dart';

import '../../intro_screens/widgets/list_tile.dart';

class MainScreenBar extends StatefulWidget {
  const MainScreenBar({super.key});

  @override
  State<MainScreenBar> createState() => _MainScreenBarState();
}

class _MainScreenBarState extends State<MainScreenBar> {
  List listitem = ["1 Hour", "2 Hour", "3 Hour"];
  String? valueChoose;

  List listaddress = ["Bahadurabad", "Nazimabad", "Tariq Road"];
  String? valueChoice;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 252,
      color: const Color(0xFF2A4BA0),
      child: Column(
        children: [
          MyTitle(
            leadingWidget: Text(
              'Hey, Aashir',
              style: GoogleFonts.manrope(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
            trailingwidget: GestureDetector(
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
                color: Colors.white,
                size: 24,
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                //textfield
                child: TextField(
                  readOnly: true,
                  style: const TextStyle(color: Colors.white),
                  cursorColor: Colors.white30,
                  decoration: InputDecoration(
                    fillColor: const Color.fromARGB(255, 15, 36, 89),
                    prefixIcon: const Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Icon(
                        Icons.search_sharp,
                        color: Colors.white30,
                      ),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(28)),
                    hintStyle: const TextStyle(color: Colors.white30),
                    hintText: 'Search Products or store',
                  ),
                ),
              )),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DropdownButton(
                      hint: Text(
                        "DELIVERY TO",
                        style: GoogleFonts.manrope(
                            fontSize: 12, color: Colors.white),
                      ),
                      icon: const Icon(Icons.arrow_drop_down),
                      style: GoogleFonts.manrope(
                          fontSize: 12, color: Colors.black),
                      value: valueChoice,
                      items: listaddress.map((valueItem) {
                        return DropdownMenuItem(
                            value: valueItem,
                            child: Text(
                              valueItem,
                            ));
                      }).toList(),
                      onChanged: (newvalue) {
                        setState(() {
                          valueChoice = newvalue as String?;
                        });
                      }),
                ),
              ),
              const SizedBox(
                width: 80,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DropdownButton(
                      hint: Text(
                        "WITHIN",
                        style: GoogleFonts.manrope(
                            fontSize: 12, color: Colors.white),
                      ),
                      icon: const Icon(Icons.arrow_drop_down),
                      style: GoogleFonts.manrope(
                          fontSize: 12, color: Colors.black),
                      value: valueChoose,
                      items: listitem.map((valueItem) {
                        return DropdownMenuItem(
                            value: valueItem, child: Text(valueItem));
                      }).toList(),
                      onChanged: (newvalue) {
                        setState(() {
                          valueChoose = newvalue as String?;
                        });
                      }),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
