import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer(
      {super.key,
      required this.newwidth,
      required this.newcolor,
      required this.text1});

  final double newwidth;
  final String text1;
  final Color newcolor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: newwidth,
      height: 36,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: ShapeDecoration(
        color: newcolor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text1,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color(0xFFFAFAFC),
              fontSize: 14,
              fontFamily: 'Manrope',
              fontWeight: FontWeight.w600,
              height: 1.43,
            ),
          ),
        ],
      ),
    );
  }
}
