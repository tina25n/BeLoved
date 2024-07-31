import 'package:flutter/material.dart';

import 'location.dart';
import '../widgets/top_bar.dart';
import '../widgets/next_button.dart';

class VicesPage extends StatelessWidget {
  const VicesPage({
    super.key,
  });

  static const routeName = '/vicesPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(
          topText: 'Your Vices'),
      body: Center(
        child:
        NextButton(
          buttonText: 'Next',
          onPressed: () {
            //Go to the Sign Up page
            Navigator.restorablePushNamed(
                context, LocationPage.routeName);
          },
        ),
      ),
    );

  }
}
