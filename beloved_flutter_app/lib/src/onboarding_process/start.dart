import 'package:flutter/material.dart';

import '../widgets/top_bar.dart';
import '../widgets/next_button.dart';
import 'sign_up.dart';
import 'login.dart';

class StartPage extends StatelessWidget {
  const StartPage({
    super.key,
  });

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFFF7EE),

      body: Stack(
        children: [
// Background image
          Positioned.fill(
            child: Image.asset(
              'assets/images/Background.png', // Path to your image file
              fit: BoxFit.cover, // Ensure the image covers the entire area
            ),
          ),
      Center(
        child:

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Positioned.fill(
                child: Image.asset(
                  'assets/images/Logo.png', // Path to your image file
                  fit: BoxFit.cover, // Ensure the image covers the entire area
                ),
              ),
              SizedBox(
                height: 60,
              ),
              NextButton(
                buttonText: 'Sign Up',
                onPressed: () {
                  //Go to the Sign Up page
                  Navigator.restorablePushNamed(
                      context, SignUpPage.routeName);
                },
              ),
              SizedBox(
                height: 10,
              ),
              NextButton(
                buttonText: 'Log In',
                onPressed: () {
                  //Go to the Log In page
                  Navigator.restorablePushNamed(
                      context, LogInPage.routeName);
            }
            ),
              SizedBox(
                height: 100,
              ),
            ]
          ),
        )
      ])
      );

  }
}
