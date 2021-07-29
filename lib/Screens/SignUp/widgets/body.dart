import 'package:flutter/material.dart';
import 'package:flutter_hat/Screens/Login/login_screen.dart';
import 'package:flutter_hat/Screens/SignUp/widgets/background.dart';
import 'package:flutter_hat/widgets/already_have_an_account_check.dart';
import 'package:flutter_hat/widgets/rounded_button.dart';
import 'package:flutter_hat/widgets/rounded_input_field.dart';
import 'package:flutter_hat/widgets/rounded_password_field.dart';

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
              'SIGN UP',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.3,
            ),
            // Add an app Icon
            RoundedInputField(
              hintText: 'Your Email',
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: 'SIGN UP',
              press: () {},
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              login: false,
            ),
          ],
        ),
      ),
    );
  }
}
