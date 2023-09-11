import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'widgets/deals_container.dart';
import 'widgets/main_screen_bar.dart';
import 'widgets/offers_container.dart';
import 'widgets/products_container.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AnnotatedRegion(
      value: const SystemUiOverlayStyle(statusBarColor: Color(0xFF2A4BA0)),
      child: SafeArea(
        child: Column(
          children: [
            const MainScreenBar(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        const OffersContainer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 120),
                          child: Text(
                            'Recommended',
                            style: GoogleFonts.manrope(
                              color: const Color(0xFF1E222B),
                              fontSize: 30,
                              fontWeight: FontWeight.w400,
                              height: 1.27,
                            ),
                          ),
                        ),
                        const ProductsContainer(),
                        const DealsContainer(),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
