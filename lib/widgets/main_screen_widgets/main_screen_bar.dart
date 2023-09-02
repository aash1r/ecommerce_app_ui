import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../onboarding_screen_widgets/list_tile.dart';

class MainScreenBar extends StatelessWidget {
  const MainScreenBar({super.key});

  @override
  Widget build(BuildContext context) {
    return             Container(
              height: 252,
              color: const Color(0xFF2A4BA0),
              child: Column(
                children: [
                  MyTitle(
                    leadingWidget: Text(
                      'Hey, Hilal',
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
                      padding: const EdgeInsets.all(8.0),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        //textfield
                        child: TextField(
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
                  MyTitle(
                    leadingWidget: const Opacity(
                      opacity: 0.50,
                      child: Text(
                        "DELIVERY TO",
                        style: TextStyle(
                          color: Color(0xFFF7F8FA),
                          fontSize: 11,
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    trailingwidget: Text(
                      'WITHIN\nOne Hour',
                      style: GoogleFonts.manrope(
                          fontSize: 14,
                          color: const Color(0xFFF7F8FA),
                          fontWeight: FontWeight.w500),
                    ),
                    subleadingwidget: Align(
                      alignment: const Alignment(-11, 0),
                      child: Text(
                        'Green way 3000,sylhet',
                        style: GoogleFonts.manrope(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
            )
;
  }
}