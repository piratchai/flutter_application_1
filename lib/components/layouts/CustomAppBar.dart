// ignore_for_file: file_names, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, unused_field, override_on_non_overriding_member

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class CustomAppbar {
  CustomAppbar(this._title, this._titleTextStyle);

  final Text _title;
  final TextStyle? _titleTextStyle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: _title,
      titleTextStyle: _titleTextStyle,
    );
  }
}
