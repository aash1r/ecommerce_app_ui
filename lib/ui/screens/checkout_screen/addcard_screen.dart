import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smit_mini_project/data/category_data/item_lists.dart';
import 'package:smit_mini_project/data/user.dart';
import 'package:smit_mini_project/ui/screens/orders_screen/orders_screen.dart';
import 'package:smit_mini_project/widgets/custom_calculation.dart';
import 'package:smit_mini_project/widgets/custom_checkout_button.dart';
import 'package:smit_mini_project/widgets/custom_textfield.dart';

class AddCardScreen extends StatefulWidget {
  const AddCardScreen({
    super.key,
    this.user,
  });
  final User? user;
  @override
  State<AddCardScreen> createState() => _AddCardScreenState();
}

class _AddCardScreenState extends State<AddCardScreen> {
  final _textController = TextEditingController();
  final _textController1 = TextEditingController();
  final _textController2 = TextEditingController();
  final _textController3 = TextEditingController();
  bool isTextFieldEmpty = true;
  @override
  void initState() {
    super.initState();

    // Listen for changes in the text field's content
    _textController.addListener(_textFieldListener);
    _textController1.addListener(_textFieldListener);
    _textController2.addListener(_textFieldListener);
    _textController3.addListener(_textFieldListener);
  }

  void _textFieldListener() {
    // Check if the text field is empty
    setState(() {
      isTextFieldEmpty = _textController.text.isEmpty;
      isTextFieldEmpty = _textController1.text.isEmpty;
      isTextFieldEmpty = _textController2.text.isEmpty;
      isTextFieldEmpty = _textController3.text.isEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF2A4BA0),
        title: Text(
          "Add Card",
          style: GoogleFonts.manrope(color: Colors.white),
        ),
      ),
      body: ListView(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              children: [
                const SizedBox(height: 60),
                CustomTextField(
                  textController: _textController,
                  length: 8,
                  label: "Card Holder Name",
                  hint: "Aashir",
                ),
                CustomTextField(
                  textController: _textController1,
                  input: const TextInputType.numberWithOptions(),
                  length: 16,
                  label: "Card Number",
                  hint: "1234 0987 6534 9089",
                ),
                Row(
                  children: [
                    Expanded(
                      child: CustomTextField(
                        textController: _textController2,
                        input: const TextInputType.numberWithOptions(),
                        length: 5,
                        label: "EXP Date",
                        hint: "10-23",
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: CustomTextField(
                        textController: _textController3,
                        input: const TextInputType.numberWithOptions(),
                        length: 4,
                        label: "CVC",
                        hint: "3452",
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          CustomCalculation(products: cartItems),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
                onTap: isTextFieldEmpty
                    ? null
                    : () {
                        showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                  content: Text(
                                    "Payment Successful",
                                    style: GoogleFonts.manrope(fontSize: 15),
                                    textAlign: TextAlign.center,
                                  ),
                                ));
                        Future.delayed(const Duration(seconds: 2), () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => OrdersScreen(
                                        products: cartItems,
                                      )));
                        });
                      },
                child: CustomButton(
                  text: "Make Payment",
                  color:
                      isTextFieldEmpty ? Colors.grey : const Color(0xFF2A4BA0),
                )),
          )
        ],
      ),
    );
  }
}
