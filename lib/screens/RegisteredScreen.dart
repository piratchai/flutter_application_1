// ignore_for_file: file_names, prefer_const_constructors, unused_element, unused_local_variable, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/LoginScreen.dart';

import 'SecondScreen.dart';

class RegisteredScreen extends StatefulWidget {
  const RegisteredScreen({Key? key}) : super(key: key);

  @override
  _RegisteredScreenState createState() => _RegisteredScreenState();
}

class _RegisteredScreenState extends State<RegisteredScreen> {
  // -- formValidation -- //
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // -- form controller -- //
  final textUsernameController = TextEditingController();
  final textEmailController = TextEditingController();
  final textPasswordController = TextEditingController();
  final textConfirmPasswordController = TextEditingController();

  // -- style -- //
  final double textFieldPading = 20;

  @override
  void dispose() {
    textUsernameController.dispose();
    textEmailController.dispose();
    textPasswordController.dispose();
    textConfirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  // -- username -- //
                  Center(
                    child: Padding(
                      padding: EdgeInsets.all(textFieldPading),
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
                  ),
                  // -- email -- //
                  Center(
                    child: Padding(
                      padding: EdgeInsets.all(textFieldPading),
                      child: TextFormField(
                        controller: textEmailController,
                        decoration: const InputDecoration(
                          hintText: 'เพิ่มอีเมลในการใช้งาน',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "โปรดเพิ่มอีเมล";
                          }

                          return null;
                        },
                      ),
                    ),
                  ),
                  // -- password -- //
                  Center(
                    child: Padding(
                      padding: EdgeInsets.all(textFieldPading),
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
                  ),
                  // -- confirm password -- //
                  Center(
                    child: Padding(
                      padding: EdgeInsets.all(textFieldPading),
                      child: TextFormField(
                        controller: textConfirmPasswordController,
                        decoration: const InputDecoration(
                          hintText: 'เพิ่มยืนยันรหัสผ่านในการใช้งาน',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "โปรดเพิ่มยืนยันรหัสผ่าน";
                          }

                          return null;
                        },
                      ),
                    ),
                  ),

                  // -- Row -- //
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // -- Submit Button -- //
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                        child: Center(
                          child: ElevatedButton(
                            child: Text('Confirm'),
                            onPressed: () {
                              //print('Press Button');

                              var username = textUsernameController.text;
                              var email = textEmailController.text;
                              var password = textPasswordController.text;
                              var confirmPassword =
                                  textConfirmPasswordController.text;

                              print('username : ' + username);
                              print('email : ' + email);
                              print('password : ' + password);
                              print('confirm password : ' + confirmPassword);

                              if (_formKey.currentState!.validate()) {
                                // -- check password & confirm password -- //
                                if (password != confirmPassword) {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        content:
                                            Text('โปรดระบุรหัสผ่านให้ตรงกัน'),
                                      );
                                    },
                                  );

                                  return;
                                }

                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginScreen()));
                                return;
                              }
                            },
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.blueGrey),
                              padding: MaterialStateProperty.all(
                                  EdgeInsets.fromLTRB(30, 15, 30, 15)),
                              textStyle: MaterialStateProperty.all(
                                TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                      ),
                      // -- Clear Button -- //
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                        child: Center(
                          child: ElevatedButton(
                            child: Text('Clear'),
                            onPressed: () {
                              //print('Press Button');

                              textUsernameController.clear();
                              textEmailController.clear();
                              textPasswordController.clear();
                              textConfirmPasswordController.clear();
                            },
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.brown),
                              padding: MaterialStateProperty.all(
                                  EdgeInsets.fromLTRB(30, 15, 30, 15)),
                              textStyle: MaterialStateProperty.all(
                                TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
