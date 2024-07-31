import 'package:flutter/material.dart';

import 'vices.dart';
import '../widgets/top_bar.dart';
import '../widgets/next_button.dart';

class WorkPage extends StatelessWidget {
  const WorkPage({
    super.key,
  });

  static const routeName = '/workPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(
          topText: 'Work and Education'),
      body: Center(
        child:
        NextButton(
          buttonText: 'Next',
          onPressed: () {
            //Go to the Sign Up page
            Navigator.restorablePushNamed(
                context, VicesPage.routeName);
          },
        ),
      ),
    );

  }
}
