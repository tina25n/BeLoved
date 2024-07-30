import 'package:flutter/material.dart';

import '../widgets/top_bar.dart';
import '../widgets/next_button.dart';
import 'verification.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({
    super.key,
  });

  static const routeName = '/signUpPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(
          topText: 'Sign Up'),
      body: Center(
        child:
        NextButton(
          buttonText: 'Next',
          onPressed: () {
            //Go to the Sign Up page
            Navigator.restorablePushNamed(
                context, VerificationPage.routeName);
          },
        ),
      ),
    );

  }
}
