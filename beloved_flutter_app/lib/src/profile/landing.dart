import 'package:beloved_flutter_app/src/profile/landing.dart';
import 'package:flutter/material.dart';

import '../settings/settings_view.dart';
import '../widgets/next_button.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({
    super.key,
  });

  static const routeName = '/landingPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              // Navigate to the settings page. If the user leaves and returns
              // to the app after it has been killed while running in the
              // background, the navigation stack is restored.
              Navigator.restorablePushNamed(context, SettingsView.routeName);
            },
          ),
        ],
      ),

      body: Center(
        child:
          Text(
          "You've Made a Profile!!",
          style: TextStyle(fontSize: 24.0),
        ),
      ),

    );

  }
}
