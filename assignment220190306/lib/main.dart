import 'package:flutter/material.dart';

import 'constants.dart';

import 'package:assignment220190306/screens/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData().copyWith(
        primaryColor: kPrimaryColor,
        hintColor: kEntryFillColor,
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            primary: kPrimaryColor,
            shape: CircleBorder(),
          ),
        ),
      ),
      home: LoginPage(),
    );
  }
}
