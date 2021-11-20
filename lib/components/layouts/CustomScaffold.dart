// ignore_for_file: file_names, prefer_const_constructors, unused_element, unused_local_variable, avoid_print, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  final PreferredSizeWidget _appbar;
  final Widget _body;

  CustomScaffold(this._appbar, this._body);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: _appbar, body: _body);
  }
}
