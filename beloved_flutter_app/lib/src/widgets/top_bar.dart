import 'package:flutter/material.dart';
import '../settings/settings_view.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget{
  final String topText;
  const TopBar(
      {super.key, required this.topText}
      );

  @override
  Widget build(BuildContext context) {
    return AppBar(
    title: Text(topText),
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

    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}