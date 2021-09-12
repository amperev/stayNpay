import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:staynpay/constants.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Flexible(
            flex: 1,
            child: Center(
              child: Text(
                'Log In',
                // style: theme.textTheme.headline2,
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'OpenSans',
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: _buildPhoneNumberField(context),
          ),
          Flexible(
            flex: 2,
            fit: FlexFit.loose,
            child: Center(
              child: Container(
                width: 160,
                decoration: BoxDecoration(
                  color: theme.primaryColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextButton(
                  child: Text(
                    'Login',
                    style: theme.textTheme.bodyText2,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          ),
          // SizedBox(
          //   height: 100,
          // )
        ],
      ),
    );
  }
}

Widget _buildPhoneNumberField(BuildContext context) {
  return Padding(
    padding: EdgeInsets.all(30),
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
            style: Theme.of(context).textTheme.bodyText1,
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 15.0),
              prefixIcon: Icon(
                Icons.phone,
                color: Colors.black,
              ),
              hintText: 'Enter phone number',
              hintStyle: Theme.of(context).textTheme.bodyText1,
            ),
          ),
        ),
      ],
    ),
  );
}
