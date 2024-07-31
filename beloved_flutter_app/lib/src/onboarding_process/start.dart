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
      appBar: TopBar(
          topText: 'Beloved'),

      body: Center(
        child:
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              NextButton(
                buttonText: 'Sign Up',
                onPressed: () {
                  //Go to the Sign Up page
                  Navigator.restorablePushNamed(
                      context, SignUpPage.routeName);
                },
              ),
              NextButton(
                buttonText: 'Log In',
                onPressed: () {
                  //Go to the Log In page
                  Navigator.restorablePushNamed(
                      context, LogInPage.routeName);
            }
            )
            ]
          ),
        )
      );

  }
}
