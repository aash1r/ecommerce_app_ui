import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TrackOrder extends StatelessWidget {
  const TrackOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF2A4BA0),
          title: Text(
            "Track Order",
            style: GoogleFonts.manrope(color: Colors.white),
          ),
        ),
        body: Column(children: [
          const Expanded(
            flex: 3,
            child: Image(
                height: 900,
                width: double.infinity,
                image: AssetImage("assets/map.png")),
          ),
          const SizedBox(
            height: 2,
          ),
          Expanded(
              flex: 1,
              child: Container(
                child: const Text("hehhehe"),
              ))
        ]));
  }
}
