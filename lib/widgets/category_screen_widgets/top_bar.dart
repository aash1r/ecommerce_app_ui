import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../onboarding_screen_widgets/list_tile.dart';

class CustomTopBar extends StatelessWidget {
  const CustomTopBar({super.key});

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
                    'Hey, Halal',
                    style: GoogleFonts.manrope(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                  trailingwidget: Stack(
                    children: [
                      const Icon(
                        Icons.shopping_bag_outlined,
                        color: Colors.white,
                        size: 24,
                      ),
                      Positioned(
                        right: 0,
                        child: CircleAvatar(
                          backgroundColor: const Color(0xFFF9B023),
                          radius: 6.5,
                          child: Text(
                            "3",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.manrope(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      )
                    ],
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