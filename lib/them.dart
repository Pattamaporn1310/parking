import 'package:flutter/material.dart';

class OurTheme {
  Color _lightGrern = Color.fromARGB(255, 175, 244, 248);
  Color _ligtGray = Color.fromARGB(255, 164, 164, 164);
  Color _darkerGrey = Color.fromARGB(255, 47, 94, 196);

  ThemeData buildTheme() {
    return ThemeData(
        canvasColor: _lightGrern,
        primaryColor: _lightGrern,
        accentColor: _ligtGray,
        secondaryHeaderColor: _darkerGrey,
        hintColor: _ligtGray,
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: _ligtGray,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: _lightGrern,
            ),
          ),
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: _darkerGrey,
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          minWidth: 150,
          height: 40.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ));
  }
}
