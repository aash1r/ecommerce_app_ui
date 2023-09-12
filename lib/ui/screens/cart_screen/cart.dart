import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smit_mini_project/data/category_data/category_lists.dart';
import 'package:smit_mini_project/ui/screens/checkout_screen/checkout_screen.dart';
import 'package:smit_mini_project/ui/screens/intro_screens/widgets/list_tile.dart';

class CartScreen extends StatefulWidget {
  CartScreen({super.key, this.products, required this.quant});
  final List<dynamic>? products;
  int quant;
  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    final isNew = widget.products?.isEmpty ?? true;
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Container(
            height: 252,
            color: const Color(0xFFFFC73A),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MyTitle(
                  leadingWidget: Text(
                    'Shopping Cart',
                    style: GoogleFonts.manrope(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "25%",
                      style: GoogleFonts.manrope(
                          fontSize: 100,
                          color: const Color(0xFFFAFAFC),
                          fontWeight: FontWeight.w900),
                      textAlign: TextAlign.right,
                    ),
                    Text(
                      "OFF!!",
                      style: GoogleFonts.manrope(
                          fontSize: 10,
                          color: const Color(0xFFFAFAFC),
                          fontWeight: FontWeight.w900),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: isNew
                ? const Center(child: Text("No items to display"))
                : ListView.builder(
                    itemCount: widget.products?.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        tileColor: Colors.transparent,
                        title: Text(
                          widget.products?[index].name,
                          style:
                              GoogleFonts.manrope(fontWeight: FontWeight.w800),
                        ),
                        subtitle: Text(widget.products?[index].price),
                        // trailing: Text("Quantity: ${item.quantity}"),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(widget.quant.toString()),
                            IconButton(
                              icon: const Icon(Icons.remove),
                              onPressed: () {
                                print(widget.products?.map((hi) => hi.name));
                                setState(() {
                                  if (widget.quant > 0) {
                                    widget.quant--;
                                  }
                                  if (widget.quant < 0) {
                                    widget.products?.removeAt(index);
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                      );
                    },
                  ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CheckoutScreen()));
              },
              child: Container(
                width: 327,
                height: 80,
                decoration: ShapeDecoration(
                  color: const Color(0xFF2A4BA0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Center(
                  child: Text(
                    "Proceed to checkout",
                    style:
                        GoogleFonts.manrope(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
