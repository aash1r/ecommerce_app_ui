import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smit_mini_project/data/category_data/item_lists.dart';
import 'package:smit_mini_project/ui/screens/cart_screen/cart.dart';

import '../../intro_screens/widgets/list_tile.dart';

class CustomTopBar extends StatefulWidget {
  const CustomTopBar({super.key});

  @override
  State<CustomTopBar> createState() => _CustomTopBarState();
}

class _CustomTopBarState extends State<CustomTopBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 252,
      color: const Color(0xFF2A4BA0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                size: 24,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 60),
            child: RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: 'Shop\n',
                    style: TextStyle(
                      color: Color(0xFFFAFAFC),
                      fontSize: 50,
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.w300,
                      height: 1.25,
                    ),
                  ),
                  TextSpan(
                    text: 'By Category',
                    style: TextStyle(
                      color: Color(0xFFFAFAFC),
                      fontSize: 50,
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.w800,
                      height: 1.25,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
