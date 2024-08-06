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
        appBar: TopBar(topText: 'Your Name'),
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          child: ListView(children: [
            CustomTextField(
                controller: TextEditingController(),
                title: "Name",
                hint: "Name",
                inputType: TextInputType.name,
                showInProfile: true),
            NextButton(
              buttonText: 'Next',
              onPressed: () {
                //Go to the Sign Up page
                Navigator.restorablePushNamed(
                    context, BasicDetailsPage.routeName);
              },
            ),
          ]),
        ));
  }
}
