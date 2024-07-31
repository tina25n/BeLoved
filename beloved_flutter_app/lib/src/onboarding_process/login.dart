import 'package:beloved_flutter_app/src/profile/landing.dart';
import 'package:flutter/material.dart';

import '../widgets/top_bar.dart';
import '../widgets/next_button.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({
    super.key,
  });

  static const routeName = '/logInPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(
          topText: 'Log In'),

      body: Center(
        child:
        NextButton(
          buttonText: 'Log In',
          onPressed: () {
            //Go to the Sign Up page
            Navigator.restorablePushNamed(
                context, LandingPage.routeName);
          },
        ),
      ),
    );

  }
}
