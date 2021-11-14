import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

const titleApp = "Welcome to Flutter App";

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: titleApp,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(titleApp),
        ),
        body: const Center(
          child: Text('Hi, User!!'),
        ),
      ),
    );
  }
}
