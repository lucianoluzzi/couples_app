import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

PlatformAppBar getAppBar(BuildContext context) {
  return PlatformAppBar(
    material: (_, __)  => MaterialAppBarData(
      elevation: 0,
      brightness: Brightness.dark,
    ),
  );
}