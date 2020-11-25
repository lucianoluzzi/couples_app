import 'package:couplesapp/widgets/app_bar.dart';
import 'package:couplesapp/widgets/login/login_button.dart';
import 'package:couplesapp/widgets/login/login_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      appBar: getAppBar(context),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.pink[200],
                  Colors.pink[300],
                  Colors.pink[400],
                  Colors.pink[500],
                ],
              ),
            ),
          ),
          Container(
            height: double.infinity,
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(
                horizontal: 40.0,
                vertical: 100.0,
              ),
              child: Column(
                children: [
                  PlatformText(
                    'Sign In',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'OpenSans',
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 30.0),
                  LoginTextField(
                    icon: Icons.email,
                    label: 'Email',
                    hint: 'Enter your email',
                    inputType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 30.0),
                  LoginTextField(
                    icon: Icons.lock,
                    label: 'Password',
                    hint: 'Enter your password',
                    obscureText: true,
                    isPassword: true,
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: FlatButton(
                      padding: EdgeInsets.all(0),
                      onPressed: () => print('Forgot Password Button Pressed'),
                      child: Text(
                        'Forgot password',
                        style: kLabelStyle,
                      ),
                    ),
                  ),
                  LoginButton(
                    text: "Sign in",
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.white,
                          thickness: 1,
                          endIndent: 16,
                        ),
                      ),
                      Text(
                        'or',
                        style: kLabelStyle,
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.white,
                          thickness: 1,
                          indent: 16,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
