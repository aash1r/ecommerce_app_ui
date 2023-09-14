import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCalculation extends StatelessWidget {
  const CustomCalculation({super.key, required this.products});
  final List<dynamic>? products;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total",
                  style: GoogleFonts.manrope(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                    '${products!.isNotEmpty ? products?.map<int>((e) => e.price * e.quantity).reduce((value, element) => value + element).toStringAsFixed(2) : 0}')
              ],
            ),
            const Divider(thickness: 1),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Delivery Charges",
                  style: GoogleFonts.manrope(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                    '${products!.isNotEmpty ? (products!.map<int>((e) => e.price * e.quantity).reduce((value, element) => value + element) * 0.1).toStringAsFixed(2) : 0}')
              ],
            ),
            const Divider(thickness: 1),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Sub Total",
                  style: GoogleFonts.manrope(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                    '${products!.isNotEmpty ? ((products!.map<int>((e) => e.price * e.quantity).reduce((value, element) => value + element)) + products!.map<int>((e) => e.price * e.quantity).reduce((value, element) => value + element) * 0.1).toStringAsFixed(2) : 0}')
              ],
            ),
          ],
        ),
      ),
    );
  }
}
