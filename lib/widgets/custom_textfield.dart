import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField(
      {super.key,
      this.label,
      this.hint,
      this.length,
      this.input,
      this.textController,
      this.onChanged});
  final Function(dynamic val)? onChanged;
  final String? label;
  final String? hint;
  final int? length;
  final TextInputType? input;
  final TextEditingController? textController;
  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        keyboardType: widget.input,
        maxLength: widget.length,
        autofocus: true,
        controller: widget.textController,
        decoration: InputDecoration(
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.orange)),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey)),
          focusColor: Colors.orange,
          labelText: widget.label,
          labelStyle: TextStyle(color: Colors.black.withOpacity(0.9)),
          hintText: widget.hint,
          hintStyle: TextStyle(color: Colors.grey.withOpacity(0.8)),
          suffixIcon: IconButton(
              onPressed: () {
                widget.textController?.clear();
              },
              icon: const Icon(
                Icons.clear_outlined,
                color: Colors.black,
              )),
        ),
      ),
    );
  }
}
