import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../data/data.dart';

class DealsContainer extends StatelessWidget {
  const DealsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
                        height: 210,
                        width: double.infinity,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: Data.deals.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 150,
                                width: 150,
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12)),
                                  color: Data.deals[index][3] as Color,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Column(
                                      children: [
                                        Image(
                                            height: 70,
                                            image: AssetImage(
                                                "assets/Image Icon.png")),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                          style: GoogleFonts.manrope(
                                              color: const Color(0xFF61697C)),
                                        ),
                                        Text(
                                          Data.deals[index][2].toString(),
                                          style: GoogleFonts.manrope(
                                              color: const Color(0xFF61697C)),
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