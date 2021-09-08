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
        primaryColor: Colors.amber[300],
        // primarySwatch:
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}
