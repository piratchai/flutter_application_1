// ignore_for_file: file_names, prefer_const_constructors, unused_element, unused_local_variable, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/HomeScreen.dart';
import 'package:flutter_application_1/screens/RegisteredScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // -- formValidation -- //
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // -- form controller -- //
  final textUsernameController = TextEditingController();
  final textPasswordController = TextEditingController();

  @override
  void dispose() {
    textUsernameController.dispose();
    textPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            // -- username -- //
            Center(
              child: TextFormField(
                controller: textUsernameController,
                decoration: const InputDecoration(
                  hintText: 'เพิ่มชื่อในการใช้งาน',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "โปรดเพิ่มชื่อ";
                  }

                  return null;
                },
              ),
            ),
            // -- password -- //
            Center(
              child: TextFormField(
                controller: textPasswordController,
                decoration: const InputDecoration(
                  hintText: 'เพิ่มรหัสผ่านในการใช้งาน',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "โปรดเพิ่มรหัสผ่าน";
                  }

                  return null;
                },
              ),
            ),
            // -- Submit Button -- //
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Center(
                child: ElevatedButton(
                  child: Text('Submit'),
                  onPressed: () {
                    //print('Press Button');

                    var username = textUsernameController.text;
                    var password = textPasswordController.text;

                    print('username : ' + username);
                    print('password : ' + password);

                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                      return;
                    }
                  },
                ),
              ),
            ),

            // -- Registered Button -- //
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Center(
                child: ElevatedButton(
                  child: Text('Registered'),
                  onPressed: () {
                    //print('Press Button');

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisteredScreen()));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
