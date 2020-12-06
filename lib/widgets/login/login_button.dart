import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginButton extends StatelessWidget {
  final String text;

  LoginButton({this.text});

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkModeOn = brightness == Brightness.dark;

    return Container(
      width: double.infinity,
      child: RaisedButton(
        padding: EdgeInsets.only(
          left: 16,
          top: 8,
          right: 16,
          bottom: 8,
        ),
        child: Text(
          text,
          style: TextStyle(
            color: isDarkModeOn ? Theme.of(context).textTheme.bodyText1.color : Colors.pink,
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
            fontFamily: 'OpenSans',
          ),
        ),
        elevation: 3.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: !isDarkModeOn ? Colors.white : null,
        onPressed: () {},
      ),
    );
  }
}
