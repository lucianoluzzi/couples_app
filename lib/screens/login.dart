import 'package:couplesapp/widgets/app_bar.dart';
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
                vertical: 120.0,
              ),
              child: Column(
                children: [
                  Text(
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
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

// Widget _getEmailTextField() {
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: <Widget>[
//       Text(
//         'Email',
//         style: kLabelStyle,
//       ),
//       SizedBox(height: 10.0),
//       Container(
//         alignment: Alignment.centerLeft,
//         decoration: kBoxDecorationStyle,
//         height: 60.0,
//         child: TextField(
//           keyboardType: TextInputType.emailAddress,
//           style: TextStyle(
//             color: Colors.white,
//             fontFamily: 'OpenSans',
//           ),
//           decoration: InputDecoration(
//             border: InputBorder.none,
//             contentPadding: EdgeInsets.only(top: 14.0),
//             prefixIcon: Icon(
//               Icons.email,
//               color: Colors.white,
//             ),
//             hintText: 'Enter your Email',
//             hintStyle: kHintTextStyle,
//           ),
//         ),
//       ),
//     ],
//   );
// }
}
