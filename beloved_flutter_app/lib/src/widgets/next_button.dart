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
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              // Define the background color here
              backgroundColor: Color(0xFFFF6962),
              foregroundColor: Colors.white,
              minimumSize: Size(125, 44),
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
          )
        );
  }
}