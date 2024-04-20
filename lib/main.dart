import 'package:flutter/material.dart';
import 'package:platform/platform.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

import 'src/app.dart';
import 'src/settings/settings_controller.dart';
import 'src/settings/settings_service.dart';

import 'package:aria_mhacks/Pages/startWordPage.dart';
import 'package:aria_mhacks/Scripts/geminiTest.dart';
import 'package:aria_mhacks/Pages/drawerMenu.dart';
import 'dart:io';

void main() async {
  // Set up the SettingsController, which will glue user settings to multiple
  // Flutter Widgets.
  final settingsController = SettingsController(SettingsService());

  // Load the user's preferred theme while the splash screen is displayed.
  // This prevents a sudden theme change when the app is first displayed.
  await settingsController.loadSettings();


  //loading API 

  const apiKey_ = 'AIzaSyDxDkSPCuPOSUtwac_YrZIWJEB-bqiqw1A';//geminiTest().apiKey;
  if (apiKey_ == null) {
      print('No \$API_KEY environment variable');
      exit(1);
  }
  // For text-only input, use the gemini-pro model
  final model = GenerativeModel(model: 'gemini-pro', apiKey: apiKey_);

  // Run the app and pass in the SettingsController. The app listens to the
  // SettingsController for changes, then passes it further down to the
  // SettingsView.
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //static const appTitle = 'Drawer Demo';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(title: 's'),
    );
  }
}