import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CircularButton extends StatelessWidget {
  final AssetImage logo;

  CircularButton({this.logo});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {},
      elevation: 2.0,
      fillColor: Colors.white,
      child: Image(
          image: logo,
          fit: BoxFit.scaleDown,
          alignment: FractionalOffset.center,
          height: 40,
          width: 40,
      ),
      padding: EdgeInsets.all(15.0),
      shape: CircleBorder(),
    );
  }
}
