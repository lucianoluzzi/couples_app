import 'package:couplesapp/screens/login.dart';
import 'package:couplesapp/widgets/material_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: LightTheme().lightTheme,
      darkTheme: DarkTheme().darkTheme,
      home: Login(),
    );
  }
}
