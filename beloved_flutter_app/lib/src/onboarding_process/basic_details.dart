import 'package:flutter/material.dart';

import 'work_and_education.dart';
import '../widgets/top_bar.dart';
import '../widgets/next_button.dart';

class BasicDetailsPage extends StatelessWidget {
  const BasicDetailsPage({
    super.key,
  });

  static const routeName = '/basicDetailsPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(
          topText: 'Your Basic Details'),
      body: Center(
        child:
        NextButton(
          buttonText: 'Next',
          onPressed: () {
            //Go to the Sign Up page
            Navigator.restorablePushNamed(
                context, WorkPage.routeName);
          },
        ),
      ),
    );

  }
}
