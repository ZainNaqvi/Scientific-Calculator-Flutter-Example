import 'package:flutter/material.dart';

class MyThemes {
  static ThemeData lightTheme() => ThemeData(
        canvasColor: Colors.grey[50],
        accentColor: Colors.grey[500],
        appBarTheme: AppBarTheme(
            backgroundColor: Colors.white,
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.black)),
        focusColor: Colors.black,
      );
  static ThemeData darkTheme() => ThemeData(
        canvasColor: Color.fromARGB(255, 0, 0, 0),
        accentColor: Colors.grey[500],
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.black,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.white),
        ),
        focusColor: Colors.white,
      );
}
