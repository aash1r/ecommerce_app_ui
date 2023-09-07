import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smit_mini_project/ui/screens/category_screen/category_detail.dart';

import '../../../../data/data.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: Data.category.length,
        itemBuilder: (context, index) {
          final product = Data.category[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CategoryDetails(
                          select: product["name"] == Data.allcategories[index]
                              ? Data.allfoods[index]
                              : Data.meatnfish),
                    ));
              },
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
    );
  }
}
