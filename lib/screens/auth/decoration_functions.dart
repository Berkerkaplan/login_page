import 'package:flutter/material.dart';
import 'package:login_page/config/palette.dart';

InputDecoration registerInputDecoration({String hintText}) {
  return InputDecoration(
    contentPadding: EdgeInsets.symmetric(vertical: 18.0),
    hintStyle: TextStyle(color: Colors.white, fontSize: 18.0),
    hintText: hintText,
    focusedErrorBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.white, width: 2.0),
    ),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Palette.orange,
      ),
    ),
    errorStyle: TextStyle(
      color: Colors.white,
    ),
  );
}

InputDecoration signInInputDecoration({String hintText}) {
  return InputDecoration(
    contentPadding: EdgeInsets.symmetric(vertical: 18.0),
    hintStyle: TextStyle(fontSize: 18.0),
    hintText: hintText,
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Palette.darkBlue),
    ),
    errorBorder: UnderlineInputBorder(
      borderSide: BorderSide(width: 2.0, color: Palette.darkOrange),
    ),
    focusedErrorBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Palette.darkOrange,
      ),
    ),
    errorStyle: TextStyle(
      color: Palette.darkOrange,
    ),
  );
}
