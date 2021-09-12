// @dart=2.9
import 'package:flutter/material.dart';
import 'package:staynpay/screens/home.dart';
import 'package:staynpay/screens/login.dart';
import 'screens/signin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'stayNpay',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        '/login': (context) => Login(),
        '/signin': (context) => Signin(),
      },
      theme: ThemeData(
        primaryColor: Color(0xFF3E70F1),
        accentColor: Colors.white,
        backgroundColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          headline1: TextStyle(
            color: Colors.white,
            fontSize: 42.0,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600,
          ),
          headline2: TextStyle(
            color: Colors.black,
            fontFamily: 'Montserrat',
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
          bodyText1: TextStyle(
            color: Colors.black,
          ),
          bodyText2: TextStyle(
            color: Colors.white,
            fontFamily: 'Montserrat',
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      darkTheme: ThemeData(
        primaryColor: Color(0xFF2A363B),
        accentColor: Colors.amber[600],
        backgroundColor: Color(0xFF2A363B),
        scaffoldBackgroundColor: Colors.grey,
        textTheme: TextTheme(
          headline1: TextStyle(
            color: Colors.white,
            fontSize: 32.0,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600,
          ),
          headline2: TextStyle(
            color: Colors.white,
            fontFamily: 'Montserrat',
            fontSize: 25,
          ),
          bodyText1: TextStyle(color: Colors.white),
          bodyText2: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
