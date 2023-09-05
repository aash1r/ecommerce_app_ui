import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:smit_mini_project/ui/screens/intro_screens/widgets/get_started_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomScreen extends StatelessWidget {
  const CustomScreen(
      {super.key,
      this.text1,
      this.text2,
      required this.text3,
      this.controllerr});

  final String? text1;
  final String? text2;
  final String? text3;
  final PageController? controllerr;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF2A4BA0),
        body: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  text1 ?? "",
                  style: GoogleFonts.manrope(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xffFAFBFD),
                  ),
                ),
                Row(children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    text3 ?? "",
                    style: GoogleFonts.manrope(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xffFAFBFD),
                    ),
                  ),
                  const SizedBox(
                    width: 35,
                  ),
                  const Image(image: AssetImage('assets/Emoji.png')),
                ]),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    text2 ?? "",
                    style: GoogleFonts.manrope(
                        color: const Color(0xffB2BBCE),
                        fontWeight: FontWeight.w500,
                        fontSize: 19),
                  ),
                ),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, top: 10),
                    child: SmoothPageIndicator(
                        effect: WormEffect(
                            dotColor: Colors.indigo,
                            activeDotColor: Colors.amber.shade100),
                        controller: controllerr ?? PageController(),
                        count: 2),
                  ),
                ),
                Container(alignment: const Alignment(0, 0.75)),
                const SizedBox(
                  height: 70,
                ),
                //image
                Column(
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(-0.05, 0),
                      child: LottieBuilder.asset(
                        "assets/animation.json",
                        height: 200,
                        reverse: true,
                        repeat: true,
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 90,
                ),
                //Get Started Button
                const GetStartedButton(),
              ],
            )),
      ),
    );
  }
}
