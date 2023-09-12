import 'package:flutter/material.dart';
import 'package:smit_mini_project/data/category_data/item_lists.dart';

class FavouritesScreen extends StatefulWidget {
  const FavouritesScreen({super.key, this.favcart});
  final favcart;
  @override
  State<FavouritesScreen> createState() => _FavouritesScreenState();
}

class _FavouritesScreenState extends State<FavouritesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF2A4BA0),
          title: const Text("My favourites"),
        ),
        body: SafeArea(
            child: ListView.builder(
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
