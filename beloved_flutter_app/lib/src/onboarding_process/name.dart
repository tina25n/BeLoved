import 'package:flutter/material.dart';

import '../widgets/next_button.dart';
import '../widgets/text_field.dart';
import '../widgets/top_bar.dart';
import 'basic_details.dart';

class NamePage extends StatelessWidget {
  const NamePage({
    super.key,
  });

  // comment
  static const routeName = '/namePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.transparent,
    ),
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            CustomTextField(
                controller: TextEditingController(),
                title: "First Name",
                hint: "First Name",
                inputType: TextInputType.name,
                showInProfile: false),
            CustomTextField(
                controller: TextEditingController(),
                title: "Last Name",
                hint: "Last Name",
                inputType: TextInputType.name,
                showInProfile: false),
            Text("BeLoved will only share your last name with matches."),
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
