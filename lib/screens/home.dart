import 'package:flutter/material.dart';
import 'package:staynpay/constants.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const Map<int, Color> colorMap = {
      50: Color.fromRGBO(42, 54, 59, 0.1),
      100: Color.fromRGBO(42, 54, 59, 0.2),
      200: Color.fromRGBO(42, 54, 59, 0.3),
      300: Color.fromRGBO(42, 54, 59, 0.4),
      400: Color.fromRGBO(42, 54, 59, 0.5),
      500: Color.fromRGBO(42, 54, 59, 0.6),
      600: Color.fromRGBO(42, 54, 59, 0.7),
      700: Color.fromRGBO(42, 54, 59, 0.8),
      800: Color.fromRGBO(42, 54, 59, 0.9),
      900: Color.fromRGBO(42, 54, 59, 1.0),
    };
    const MaterialColor primaryColor = MaterialColor(0xFF2A363B, colorMap);

    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Text(
              'stay N pay .',
              style: TextStyle(
                fontSize: 32.0,
                color: Colors.white,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: 240,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                  color: kgreen,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                  color: kgreen,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
