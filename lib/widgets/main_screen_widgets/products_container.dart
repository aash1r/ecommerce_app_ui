import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../data/data.dart';

class ProductsContainer extends StatelessWidget {
  const ProductsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 194,
      width: double.infinity,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: Data.items.length,
        itemBuilder: (context, index) {
          final product = Data.items[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 150,
              width: 150,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                color: Colors.grey,
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
                    height: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        product["name"].toString(),
                        style: GoogleFonts.manrope(
                            color: const Color(0xFF1E222B),
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            height: 1.43),
                      ),
                      Text(
                        product["variants"].toString(),
                        style:
                            GoogleFonts.manrope(color: const Color(0xFF61697C)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
