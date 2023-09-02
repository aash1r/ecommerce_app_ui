import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../data/data.dart';

class SavingsContainer extends StatelessWidget {
  const SavingsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      width: double.infinity,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: Data.savings.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              width: 180,
              decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  color: Data.savings[index][3] as Color),
              child: Center(
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: Data.savings[index][0].toString(),
                        style: GoogleFonts.manrope(
                            color: const Color(0xFF1E222B),
                            fontWeight: FontWeight.w800,
                            fontSize: 26)),
                    TextSpan(
                        text: Data.savings[index][1].toString(),
                        style: GoogleFonts.manrope(
                            color: const Color(0xFF1E222B),
                            fontWeight: FontWeight.w300,
                            fontSize: 26)),
                    TextSpan(
                      text: Data.savings[index][2].toString(),
                      style: GoogleFonts.manrope(
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF1E222B),
                          fontSize: 14,
                          height: 1.43),
                    )
                  ]),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
