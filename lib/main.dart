import 'package:flutter/material.dart';
import 'package:food_app/screens/forgot_password_screen.dart';
import 'package:food_app/screens/home_screen.dart';



void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.white,
        ),
        scaffoldBackgroundColor: Color(0xFFFAFAFA),
      ),
      home: ForgotPassword(),
    );
  }
}
