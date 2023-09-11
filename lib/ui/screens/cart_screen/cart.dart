import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:smit_mini_project/data/category_data/item_lists.dart';
import 'package:smit_mini_project/data/food_data.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key, this.products});
  final products;

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Cart"),
        backgroundColor: const Color(0xFF2A4BA0),
      ),
      // body: widget.products.isEmpty
      //     ? const Center(child: Text("Empty Cart"))
      // :
      body: ListView.builder(
        itemCount: widget.products.length,
        itemBuilder: (context, index) {
          return ListTile(
            tileColor: Colors.grey,
            title: Text(widget.products[index].name),
            subtitle: Text(widget.products[index].price),
            // trailing: Text("Quantity: ${item.quantity}"),
            trailing: IconButton(
              icon: const Icon(Icons.remove),
              onPressed: () {
                setState(() {
                  widget.products.removeAt(index);
                });
              },
            ),
          );
        },
      ),
    );
  }
}
