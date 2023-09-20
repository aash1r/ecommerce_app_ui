import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:smit_mini_project/ui/screens/main_screen/widgets/bottom_navbar.dart';

class FavouritesScreen extends StatefulWidget {
  const FavouritesScreen({super.key, this.favcart});
  // ignore: prefer_typing_uninitialized_variables
  final favcart;
  @override
  State<FavouritesScreen> createState() => _FavouritesScreenState();
}

class _FavouritesScreenState extends State<FavouritesScreen> {
  @override
  Widget build(BuildContext context) {
    final isNew = widget.favcart?.isEmpty ?? true;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF2A4BA0),
          title: Text(
            "My favourites",
            style: GoogleFonts.manrope(color: Colors.white),
          ),
        ),
        body: SafeArea(
            child: isNew
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      LottieBuilder.asset(
                        "assets/favorite.json",
                        height: 250,
                        reverse: true,
                        repeat: true,
                        fit: BoxFit.cover,
                      ),
                      Center(
                          child: Text(
                        "No Items marked as favourites!",
                        style: GoogleFonts.manrope(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      )),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const BottomNavBar()));
                          },
                          child: Container(
                            width: 200,
                            height: 60,
                            decoration: ShapeDecoration(
                              color: const Color(0xFF2A4BA0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Add Items Now!",
                                style: GoogleFonts.manrope(
                                    fontSize: 16, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                : ListView.builder(
                    itemCount: widget.favcart.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        tileColor: Colors.transparent,
                        title: Text(
                          widget.favcart?[index].name,
                          style:
                              GoogleFonts.manrope(fontWeight: FontWeight.w800),
                        ),
                        subtitle: Text("\$${widget.favcart?[index].price}"),
                        trailing: IconButton(
                          icon: const Icon(Icons.remove),
                          onPressed: () {
                            setState(() {
                              widget.favcart?.removeAt(index);
                            });
                          },
                        ),
                      );
                    })));
  }
}
