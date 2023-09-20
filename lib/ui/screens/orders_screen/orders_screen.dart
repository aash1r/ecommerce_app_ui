import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:smit_mini_project/ui/screens/main_screen/widgets/bottom_navbar.dart';
import 'package:smit_mini_project/ui/screens/tracking_sreen/track_order.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({
    super.key,
    required this.products,
  });
  final List<dynamic>? products;

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
      body: isNew
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LottieBuilder.asset(
                  "assets/empty.json",
                  height: 250,
                  reverse: true,
                  repeat: true,
                  fit: BoxFit.cover,
                ),
                Center(
                    child: Text(
                  "Your Cart is Empty",
                  style: GoogleFonts.manrope(
                      fontWeight: FontWeight.bold, fontSize: 16),
                )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                      child: Text(
                    "Looks like you haven't ordered anything!",
                    style: GoogleFonts.manrope(
                        fontWeight: FontWeight.w500, fontSize: 13),
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BottomNavBar()));
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
                          "Browse Now",
                          style: GoogleFonts.manrope(
                              fontSize: 16, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          : Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: widget.products?.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        tileColor: Colors.transparent,
                        title: Text(
                          widget.products?[index].name,
                          style:
                              GoogleFonts.manrope(fontWeight: FontWeight.w800),
                        ),
                        subtitle: Text("\$${widget.products?[index].price}"),
                        // trailing: Text("Quantity: ${item.quantity}"),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                                "${widget.products?[index].quantity.toString()}x"),
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
                              builder: (context) => const TrackOrder()));
                    },
                    child: Container(
                      width: 300,
                      height: 60,
                      decoration: ShapeDecoration(
                        color: const Color(0xFF2A4BA0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Track Order",
                          style: GoogleFonts.manrope(
                              fontSize: 16, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
