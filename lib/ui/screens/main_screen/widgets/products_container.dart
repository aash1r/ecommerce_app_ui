import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smit_mini_project/ui/screens/food_detail_screen/food_details.dart';

import '../../../../data/data.dart';

class ProductsContainer extends StatefulWidget {
  const ProductsContainer({super.key});

  @override
  State<ProductsContainer> createState() => _ProductsContainerState();
}

class _ProductsContainerState extends State<ProductsContainer> {
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
          final dataProduct = dataItems[index];

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 150,
              width: 150,
              decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Image(
                        height: 105,
                        image: AssetImage(product["image"] ?? ""),
                      ),
                    ],
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
                                    builder: (context) => FoodDetailsPage(
                                          addCartItem: dataProduct,
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
