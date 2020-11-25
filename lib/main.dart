import 'package:couplesapp/screens/login.dart';
import 'package:couplesapp/widgets/cupertino_theme.dart';
import 'package:couplesapp/widgets/material_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlatformProvider(
      builder: (BuildContext context) => PlatformApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        material: (_, __) => MaterialAppData(theme: materialThemeData),
        cupertino: (_, __) => CupertinoAppData(theme: cupertinoTheme),
        home: Login(),
      ),
    );
  }
}
