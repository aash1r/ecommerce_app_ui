import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smit_mini_project/data/category_data/item_lists.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key, this.products, this.quant});
  final List<dynamic>? products;
  final Items? quant;

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  @override
  Widget build(BuildContext context) {
    final isNew = widget.products?.isEmpty ?? true;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF2A4BA0),
        title: Text(
          "My Orders",
          style: GoogleFonts.manrope(color: Colors.white),
        ),
      ),
      // body: isNew
      //     ? const Center(child: Text("No items to display"))
      // :
      body: ListView.builder(
        itemCount: widget.products?.length,
        itemBuilder: (context, index) {
          return ListTile(
            tileColor: Colors.transparent,
            title: Text(
              widget.products?[index].name,
              style: GoogleFonts.manrope(fontWeight: FontWeight.w800),
            ),
            subtitle: Text(widget.products?[index].price),
            // trailing: Text("Quantity: ${item.quantity}"),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(widget.quant?.quantity.toString() ?? '0'),
                IconButton(
                  icon: const Icon(Icons.remove),
                  onPressed: () {
                    // print(widget.products?.map((hi) => hi.name));
                    setState(() {
                      if (widget.quant?.quantity != null) {
                        if (widget.quant!.quantity > 0) {
                          widget.quant!.quantity--;
                        }
                        // ignore: unrelated_type_equality_checks
                        if (widget.quant == 0) {
                          widget.products?.removeAt(index);
                        }
                      }
                    });
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
