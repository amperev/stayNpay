import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:staynpay/constants.dart';

class Login extends StatelessWidget {
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
      appBar: AppBar(
        title: Text(kAppName),
      ),
      backgroundColor: primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Log In',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans',
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          _buildPhoneNumberField(),
          Container(
            alignment: Alignment.bottomRight,
            padding: EdgeInsetsDirectional.only(end: 20),
            child: _proceedFAB(),
          ),
        ],
      ),
    );
  }
}

Widget _buildPhoneNumberField() {
  return Padding(
    padding: EdgeInsets.all(20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Number',
          style: kLabelStyle,
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            keyboardType: TextInputType.number,
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
            ],
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.phone,
                color: Colors.white,
              ),
              hintText: 'Enter your Phone',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _proceedFAB() {
  return FloatingActionButton(
    onPressed: () {},
    backgroundColor: kgreenblack,
    child: Icon(Icons.arrow_right),
  );
}
