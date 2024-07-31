import 'package:beloved_flutter_app/src/profile/landing.dart';
import 'package:beloved_flutter_app/src/sample_feature/sample_item_details_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

// import everything from the onboarding process
import 'onboarding_process/start.dart';
import 'onboarding_process/sign_up.dart';
import 'onboarding_process/login.dart';
import 'onboarding_process/verification.dart';
import 'onboarding_process/name.dart';
import 'onboarding_process/basic_details.dart';
import 'onboarding_process/work_and_education.dart';
import 'onboarding_process/vices.dart';
import 'onboarding_process/location.dart';
import 'onboarding_process/preferences.dart';
import 'onboarding_process/add_images.dart';

// import everything from settings
import 'settings/settings_controller.dart';
import 'settings/settings_view.dart';

/// The Widget that configures your application.
class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
    required this.settingsController,
  });

  final SettingsController settingsController;

  @override
  Widget build(BuildContext context) {
    // Glue the SettingsController to the MaterialApp.
    //
    // The ListenableBuilder Widget listens to the SettingsController for changes.
    // Whenever the user updates their settings, the MaterialApp is rebuilt.
    return ListenableBuilder(
      listenable: settingsController,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          // Providing a restorationScopeId allows the Navigator built by the
          // MaterialApp to restore the navigation stack when a user leaves and
          // returns to the app after it has been killed while running in the
          // background.
          restorationScopeId: 'app',

          // Provide the generated AppLocalizations to the MaterialApp. This
          // allows descendant Widgets to display the correct translations
          // depending on the user's locale.
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('en', ''), // English, no country code
          ],

          // Use AppLocalizations to configure the correct application title
          // depending on the user's locale.
          //
          // The appTitle is defined in .arb files found in the localization
          // directory.
          onGenerateTitle: (BuildContext context) =>
              AppLocalizations.of(context)!.appTitle,

          // Define a light and dark color theme. Then, read the user's
          // preferred ThemeMode (light, dark, or system default) from the
          // SettingsController to display the correct theme.
          theme: ThemeData(),
          darkTheme: ThemeData.dark(),
          themeMode: settingsController.themeMode,

          // Define a function to handle named routes in order to support
          // Flutter web url navigation and deep linking.
          onGenerateRoute: (RouteSettings routeSettings) {
            return MaterialPageRoute<void>(
              settings: routeSettings,
              builder: (BuildContext context) {
                switch (routeSettings.name) {
                  case SettingsView.routeName:
                    return SettingsView(controller: settingsController);
                  case StartPage.routeName:
                    return const StartPage();
                  case SignUpPage.routeName:
                    return const SignUpPage();
                  case LogInPage.routeName:
                    return const LogInPage();
                  case VerificationPage.routeName:
                    return const VerificationPage();
                  case NamePage.routeName:
                    return const NamePage();
                  case BasicDetailsPage.routeName:
                    return const BasicDetailsPage();
                  case WorkPage.routeName:
                    return const WorkPage();
                  case VicesPage.routeName:
                    return const VicesPage();
                  case LocationPage.routeName:
                    return const LocationPage();
                  case PreferencesPage.routeName:
                    return const PreferencesPage();
                  case AddImagesPage.routeName:
                    return const AddImagesPage();
                  case LandingPage.routeName:
                    return const LandingPage();
                  default:
                    return const StartPage();
                }
              },
            );
          },
        );
      },
    );
  }
}
