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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(formattedDate, style: GoogleFonts.manrope(fontSize: 18)),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
            child: Row(
              children: [
                Text("Delivery Address: ",
                    style: GoogleFonts.manrope(
                        fontSize: 14, fontWeight: FontWeight.bold)),
                // Text("${userCheckoutDetails["Name  "]}"),
                // Text("${userCheckoutDetails["Card Number"]}"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:
                Row(children: [Text("${userCheckoutDetails["Home Address"]}")]),
          ),
        ]));
  }
}
