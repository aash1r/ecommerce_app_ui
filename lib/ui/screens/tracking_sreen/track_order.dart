import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smit_mini_project/data/user.dart';
import 'package:intl/intl.dart';

class TrackOrder extends StatelessWidget {
  const TrackOrder({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat().format(now);

    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF2A4BA0),
          title: Text(
            "Track Order",
            style: GoogleFonts.manrope(color: Colors.white),
          ),
        ),
        body: Column(children: [
          const Image(
            image: AssetImage("assets/A22.jpeg"),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(formattedDate,
                  style: GoogleFonts.libreBaskerville(fontSize: 18)),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Text("Delivery Address: ${userCheckoutDetails["Home Address"]}"),
              Text("${userCheckoutDetails["Name"]}"),
              Text("${userCheckoutDetails["Card Number"]}"),
            ],
          )
        ]));
  }
}
