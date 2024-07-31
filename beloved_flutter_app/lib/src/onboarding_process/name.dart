import 'package:flutter/material.dart';

import 'basic_details.dart';
import '../widgets/top_bar.dart';
import '../widgets/next_button.dart';

class NamePage extends StatelessWidget {
  const NamePage({
    super.key,
  });

  static const routeName = '/namePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(
          topText: 'Your Name'),
      body: Center(
        child:
        NextButton(
          buttonText: 'Next',
          onPressed: () {
            //Go to the Sign Up page
            Navigator.restorablePushNamed(
                context, BasicDetailsPage.routeName);
          },
        ),
      ),
    );

  }
}
