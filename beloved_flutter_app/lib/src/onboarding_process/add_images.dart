import 'package:flutter/material.dart';

import '../profile/landing.dart';
import '../widgets/top_bar.dart';
import '../widgets/next_button.dart';

class AddImagesPage extends StatelessWidget {
  const AddImagesPage({
    super.key,
  });

  static const routeName = '/addImagesPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(
          topText: 'Add Your Photos'),
      body: Center(
        child:
        NextButton(
          buttonText: 'Next',
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
