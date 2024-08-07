import 'package:flutter/material.dart';

import '../widgets/next_button.dart';
import '../widgets/text_field.dart';
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
      body: Stack(children: [
        Positioned.fill(
          child: Image.asset(
            'assets/images/Background.png', // Path to your image file
            fit: BoxFit.cover, // Ensure the image covers the entire area
          ),
        ),
        ListView(
            padding: EdgeInsets.only(left: 15, right: 15),
            children: [
              SizedBox(
                  height: 250,
                  child: AppBar(
                    backgroundColor: Colors.transparent,
                  )),
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
              Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                      "BeLoved will only share your last name with matches.")),
              SizedBox(
                height: 39,
              ),
              // Padding(padding: EdgeInsets.only(bottom: bottomPadding),
              // child:
              NextButton(
                buttonText: 'Next',
                onPressed: () {
                  //Go to the Sign Up page
                  Navigator.restorablePushNamed(
                      context, BasicDetailsPage.routeName);
                },
              ),
              // ),
            ]),
      ]),
      backgroundColor: Color(0xFFFFF7EE),
      resizeToAvoidBottomInset: false,
    );
  }
}
