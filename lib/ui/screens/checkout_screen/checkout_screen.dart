import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smit_mini_project/data/category_data/item_lists.dart';
import 'package:smit_mini_project/data/user.dart';
import 'package:smit_mini_project/ui/screens/checkout_screen/addcard_screen.dart';
import 'package:smit_mini_project/widgets/custom_calculation.dart';
import 'package:smit_mini_project/widgets/custom_checkout_button.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key, this.products});
  final List<dynamic>? products;

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  final textController = TextEditingController();
  final textController1 = TextEditingController();
  bool _isTextFieldEmpty = true;
  final newUser = User();

  @override
  void initState() {
    super.initState();

    // Listen for changes in the text field's content
    textController.addListener(_textFieldListener);
    textController1.addListener(_textFieldListener);
  }

  void _textFieldListener() {
    // Check if the text field is empty
    setState(() {
      _isTextFieldEmpty = textController.text.isEmpty;
      _isTextFieldEmpty = textController1.text.isEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Checkout",
          style: GoogleFonts.manrope(color: Colors.white),
        ),
        backgroundColor: const Color(0xFF2A4BA0),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Delivery Address",
                style: GoogleFonts.manrope(fontSize: 16),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    onChanged: (val) {
                      setState(() {
                        userCheckoutDetails['Home Address'] = val;
                      });
                      
                    },
                    autofocus: true,
                    controller: textController,
                    decoration: InputDecoration(
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.orange)),
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)),
                        labelText: "Home",
                        labelStyle:
                            TextStyle(color: Colors.black.withOpacity(0.9)),
                        suffixIcon: IconButton(
                            onPressed: () {
                              textController.clear();
                            },
                            icon: const Icon(
                              Icons.clear_outlined,
                              color: Colors.black,
                            )),
                        border: const OutlineInputBorder()),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    onChanged: (val) {
                      setState(() {
                        userCheckoutDetails['Office Address'] = val;
                      });
                      
                    },
                    autofocus: true,
                    controller: textController1,
                    decoration: InputDecoration(
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.orange)),
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)),
                        labelText: "Office",
                        labelStyle:
                            TextStyle(color: Colors.black.withOpacity(0.9)),
                        hintText: "",
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                newUser.address = textController.text;
                                newUser.officeAddress = textController1.text;
                              });
                              textController1.clear();
                            },
                            icon: const Icon(
                              Icons.clear_outlined,
                              color: Colors.black,
                            )),
                        border: const OutlineInputBorder()),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: const Text("Add New Address"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 210),
              child: CustomCalculation(products: cartItems),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                  onTap: _isTextFieldEmpty
                      ? null
                      : () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const AddCardScreen(),
                              ));
                        },
                  child: CustomButton(
                    text: "Add Card",
                    color: _isTextFieldEmpty
                        ? Colors.grey
                        : const Color(0xFF2A4BA0),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
