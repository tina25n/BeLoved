import 'package:flutter/material.dart';

import 'name.dart';
import '../widgets/top_bar.dart';
import '../widgets/next_button.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({
    super.key,
  });

  static const routeName = '/verificationPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(
          topText: 'Verification'),
      body: Center(
        child:
        NextButton(
          buttonText: 'Next',
          onPressed: () {
            //Go to the Sign Up page
            Navigator.restorablePushNamed(
                context, NamePage.routeName);
          },
        ),
      ),
    );

  }
}
