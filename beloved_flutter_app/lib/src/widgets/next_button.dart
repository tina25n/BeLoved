import 'package:flutter/material.dart';

class NextButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;

  const NextButton(
      {super.key, required this.buttonText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Center(
      child:
          Container(
            padding: EdgeInsets.symmetric(vertical: 7),
            child:
        SizedBox(
        width: 125, // Set the desired width
        height: 44, // Set the desired height
        child:
      TextButton(
        style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.redAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            )
        ),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(buttonText),
              duration: const Duration(seconds: 1),
            ),
          );
          onPressed();
        },
        child: Text(buttonText),
      ),
    )));
  }
}
