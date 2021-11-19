import 'package:flutter/material.dart';

// -- import local -- //
import 'screens/SecondScreen.dart';

void main() {
  runApp(MainApp());
}

const titleApp = "Welcome to Flutter App";

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: titleApp, home: FirstRoute());
  }
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Open route'),
          onPressed: () {
            //print('Press Button');
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SecondRoute()));
          },
        ),
      ),
    );
  }
}
