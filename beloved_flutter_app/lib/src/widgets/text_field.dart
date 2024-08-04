import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final bool obscureText;
  final TextCapitalization textCapitalization;
  final TextInputType inputType;

  const CustomTextField({
    Key? key,
    required this.controller,
    required this.hint,
    this.obscureText = false,
    this.textCapitalization = TextCapitalization.none,
    required this.inputType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container( // container determines the shape of the text field.
      // margin: const EdgeInsets.only(bottom: 14),
      height: 44,
      child: TextField(
        enabled: true,
        controller: controller,
        textCapitalization: textCapitalization,
        maxLength: 32,
        maxLines: 1,
        obscureText: obscureText,
        keyboardType: inputType,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight:FontWeight.w500, //half bold
        ),
        decoration: InputDecoration(
          isDense: true,
          hintText: hint, //
          counterText: "",
          hintStyle: const TextStyle(
            color: Colors.black, // Set the color for the hint text
            fontSize: 16,
            fontWeight: FontWeight.w500// Set the size for the hint text
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 14),
          border: const OutlineInputBorder(
            borderSide: BorderSide(color:Colors.grey,
                width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(6)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color:Color(0xFFFF6962),
                width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(6)),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
    );
  }
}