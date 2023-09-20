import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smit_mini_project/ui/screens/food_detail_screen/food_details.dart';

import '../../../../data/data.dart';

class DealsContainer extends StatelessWidget {
  const DealsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 215,
      width: double.infinity,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: Data.deals.length,
        itemBuilder: (context, index) {
          final datadeals = itemdeals[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              width: 150,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Image(
                          height: 80,
                          image: AssetImage(Data.deals[index][4].toString())),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
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
                                          addCartItem: datadeals,
                                          
                                        )));
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Data.deals[index][0].toString(),
                        style: GoogleFonts.manrope(
                            color: const Color(0xFF1E222B),
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            height: 1.43),
                      ),
                      Text(
                        Data.deals[index][1].toString(),
                        style:
                            GoogleFonts.manrope(color: const Color(0xFF61697C)),
                      ),
                      Text(
                        Data.deals[index][2].toString(),
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
