import 'package:calculator/pages/home.dart';
import 'package:calculator/widgets/themes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyThemes.lightTheme(),
      themeMode: ThemeMode.system,
      darkTheme: MyThemes.darkTheme(),
      title: "Calculator || Scientific Calculator || Pro Calculator",
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => MyHome(),
      },
    );
  }
}
