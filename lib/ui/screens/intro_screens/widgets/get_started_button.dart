import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smit_mini_project/ui/screens/main_screen/widgets/bottom_navbar.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => const BottomNavBar()));
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        height: 70,
        width: 220,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Get Started',
              style: GoogleFonts.manrope(fontSize: 16, color: Colors.black),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8.0, bottom: 8, left: 25),
              child: Icon(
                Icons.arrow_forward,
                size: 22,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
