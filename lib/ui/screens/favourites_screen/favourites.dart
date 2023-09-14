import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                ? const Center(child: Text("No items to display"))
                : ListView.builder(
                    itemCount: widget.favcart.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        tileColor: Colors.grey,
                        title: Text(widget.favcart?[index].name),
                        subtitle: Text(widget.favcart?[index].price),
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
