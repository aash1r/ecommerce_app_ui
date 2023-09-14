import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, this.color});
  final String text;
  final color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327,
      height: 80,
      decoration: ShapeDecoration(
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: GoogleFonts.manrope(fontSize: 16, color: Colors.white),
        ),
      ),
    );
  }
}
