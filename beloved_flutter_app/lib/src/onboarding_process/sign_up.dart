import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import '../widgets/top_bar.dart';
import '../widgets/next_button.dart';
import 'verification.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:beloved_flutter_app/firebase_options.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({
    super.key,
  });

  static const routeName = '/signUpPage';

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  late  TextEditingController emailController = TextEditingController();
  late  TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    // Dispose of controllers to free resources
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF7EE),
      appBar: AppBar(
        title: Text('Sign Up'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Navigate back to the previous screen
          },
        ),
      ),
      body: FutureBuilder(
        future: Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform,
        ),
        builder: (context,snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.done:
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: 16), // Add spacing between fields
                TextField(
                  controller: passwordController,
                  enableSuggestions: false,
                  autocorrect: false,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true, // Hide password input
                ),
                SizedBox(height: 16), // Add spacing before the button
                NextButton(
                  buttonText: 'Next',
                  onPressed: () async {
                    // Retrieve text from the controllers
                    final String email = emailController.text;
                    final String password = passwordController.text;

                    final userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                        email: email,
                        password: password
                    );

                    print(userCredential);

                    // Use email and password for your authentication logic

                    // Navigate to the Verification Page
                    Navigator.restorablePushNamed(
                        context, VerificationPage.routeName);
                  },
                ),
              ],
            );

            default:
              return const Text("Loading...");
          }
        },
      ),
    );
  }
}
