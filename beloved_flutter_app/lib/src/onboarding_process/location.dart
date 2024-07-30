import 'package:flutter/material.dart';

import 'preferences.dart';
import '../widgets/top_bar.dart';
import '../widgets/next_button.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({
    super.key,
  });

  static const routeName = '/locationPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(
          topText: 'Your Location'),
      body: Center(
        child:
        NextButton(
          buttonText: 'Next',
          onPressed: () {
            //Go to the Sign Up page
            Navigator.restorablePushNamed(
                context, PreferencesPage.routeName);
          },
        ),
      ),
    );

  }
}
