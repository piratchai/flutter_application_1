// ignore_for_file: file_names, prefer_const_constructors, unused_element, unused_local_variable, avoid_print

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
        actions: [
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text('No yet a actions.')));
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Home',
          style: TextStyle(fontSize: 35),
        ),
      ),
    );
  }
}
