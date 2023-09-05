import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import '../../../../data/data.dart';

class OffersContainer extends StatelessWidget {
  const OffersContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      width: double.infinity,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: Data.parentoffers.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                color: Data.parentoffers[index][3] as Color,
              ),
              height: 200,
              width: 250,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 6, top: 20, bottom: 14),
                      child: Image(
                          height: 68,
                          width: 68,
                          image: AssetImage("assets/Image Icon.png")),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                text: Data.parentoffers[index][0].toString(),
                                style: GoogleFonts.manrope(
                                    color: Colors.white, fontSize: 20),
                              ),
                              TextSpan(
                                  text: Data.parentoffers[index][1].toString(),
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 26)),
                              TextSpan(
                                text: Data.parentoffers[index][2].toString(),
                              )
                            ])),
                          ],
                        ),
                      ),
                    )
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
