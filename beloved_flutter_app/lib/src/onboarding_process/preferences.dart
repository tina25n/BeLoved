import 'package:flutter/material.dart';

import 'add_images.dart';
import '../widgets/top_bar.dart';
import '../widgets/next_button.dart';

class PreferencesPage extends StatelessWidget {
  const PreferencesPage({
    super.key,
  });

  static const routeName = '/preferencesPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(
          topText: 'Your Preferences'),
      body: Center(
        child:
        NextButton(
          buttonText: 'Next',
          onPressed: () {
            //Go to the Sign Up page
            Navigator.restorablePushNamed(
                context, AddImagesPage.routeName);
          },
        ),
      ),
    );

  }
}
