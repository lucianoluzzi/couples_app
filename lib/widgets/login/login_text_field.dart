import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class LoginTextField extends StatefulWidget {
  final IconData icon;
  final String hint;
  final String label;
  final TextInputType inputType;
  bool obscureText;
  final bool isPassword;

  LoginTextField({
    this.icon,
    this.label,
    this.hint,
    this.inputType = TextInputType.text,
    this.obscureText = false,
    this.isPassword = false,
  });

  @override
  _LoginTextFieldState createState() => _LoginTextFieldState();
}

class _LoginTextFieldState extends State<LoginTextField> {
  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkModeOn = brightness == Brightness.dark;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        PlatformText(
          widget.label != null ? widget.label : null,
          style: Theme.of(context).textTheme.bodyText2,
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColorLight,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 6.0,
                offset: Offset(0, 2),
              ),
            ],
          ),
          height: 60.0,
          child: TextField(
            cursorColor: Colors.pink,
            obscureText: widget.obscureText,
            keyboardType: widget.inputType,
            style: TextStyle(
              color: Theme.of(context).primaryColorDark,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                widget.icon != null ? widget.icon : null,
                color: Colors.white,
              ),
              suffixIcon: Visibility(
                visible: widget.isPassword,
                child: IconButton(
                  icon: Icon(
                    widget.obscureText
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: widget.obscureText ? Colors.black26 : Colors.pink,
                    size: 24,
                  ),
                  onPressed: () {
                    setState(() {
                      widget.obscureText = !widget.obscureText;
                    });
                  },
                ),
              ),
              hintText: widget.hint != null ? widget.hint : null,
              hintStyle: TextStyle(
                color: isDarkModeOn ? Theme.of(context).primaryColorDark : Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

final kHintTextStyle = TextStyle(
  color: Colors.white54,
  fontFamily: 'OpenSans',
);

final kBoxDecorationStyle = BoxDecoration(
  color: Colors.pink[200],
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: [
    BoxShadow(
      color: Colors.black12,
      blurRadius: 6.0,
      offset: Offset(0, 2),
    ),
  ],
);
