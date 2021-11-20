// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, unused_import, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/CouterState.dart';

// -- import local -- //
import 'package:flutter_application_1/screens/FirstScreen.dart';
import 'package:flutter_application_1/screens/LoginScreen.dart';

void main() {
  runApp(MainApp());
}

const titleApp = "Welcome to Flutter App";

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //return MaterialApp(title: titleApp, home: FirstRoute());
    return MaterialApp(
      title: titleApp,
      home: LoginScreen(),
    );
  }
}
