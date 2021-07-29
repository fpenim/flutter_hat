import 'package:flutter/material.dart';
import 'package:flutter_hat/constants.dart';
import 'package:flutter_hat/screens/Login/login_screen.dart';
import 'package:flutter_hat/screens/SignUp/sign_up_screen.dart';
import 'package:flutter_hat/screens/Welcome/widgets/background.dart';
import 'package:flutter_hat/widgets/rounded_button.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'WELCOME TO HAT',
              style: Theme.of(context).textTheme.headline5,
            ),
            // Add an app Icon
            SizedBox(
              height: size.height * 0.3,
            ),
            RoundedButton(
              text: 'LOGIN',
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
            ),
            RoundedButton(
              text: 'SIGN UP',
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpScreen()),
                );
              },
              color: kPrimaryColorLight,
              textColor: Colors.black54,
            ),
          ],
        ),
      ),
    );
  }
}
