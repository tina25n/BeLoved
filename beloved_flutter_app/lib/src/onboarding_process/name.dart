import 'package:flutter/material.dart';

import 'basic_details.dart';
import '../widgets/top_bar.dart';
import '../widgets/next_button.dart';
import '../widgets/text_field.dart';
class NamePage extends StatelessWidget {
  const NamePage({
    super.key,
  });

  // comment
  static const routeName = '/namePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(
          topText: 'Your Name'),
      body: ListView(
          children:[
            CustomTextField(
                controller: TextEditingController(),
                hint: "Name",
                inputType: TextInputType.name),
            NextButton(
              buttonText: 'Next',
              onPressed: () {
                //Go to the Sign Up page
                Navigator.restorablePushNamed(
                    context, BasicDetailsPage.routeName);
              },
            ),
          ]
      ),
    );

  }
}
