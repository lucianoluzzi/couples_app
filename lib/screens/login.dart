import 'package:couplesapp/widgets/circular_button.dart';
import 'package:couplesapp/widgets/login/login_button.dart';
import 'package:couplesapp/widgets/login/login_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
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
                  Theme.of(context).primaryColorLight,
                  Theme.of(context).primaryColor,
                  Theme.of(context).primaryColorDark,
                ],
              ),
            ),
          ),
          SafeArea(
            child: Container(
              height: double.infinity,
              padding: EdgeInsets.symmetric(
                  horizontal: 40.0, vertical: screenHeight * 0.05),
              child: SingleChildScrollView(
                child: Container(
                  child: Stack(
                    children: [
                      Column(
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
                              onPressed: () =>
                                  print('Forgot Password Button Pressed'),
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
                          Row(
                            children: [
                              Expanded(
                                child: CircularButton(
                                  logo: AssetImage('images/facebook_logo.png'),
                                ),
                              ),
                              Expanded(
                                child: CircularButton(
                                    logo: AssetImage('images/google_logo.png')),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Colors.transparent,
              child: Padding(
                padding: EdgeInsets.only(
                  bottom: 16,
                  top: 8,
                ),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  GestureDetector(
                    onTap: () => print('Sign Up Button Pressed'),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Don\'t have an Account? ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          TextSpan(
                            text: 'Sign Up',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
