import 'package:flutter/material.dart';
import 'package:flutter_hat/constants.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  const AlreadyHaveAnAccountCheck({
    Key? key,
    required this.press,
    this.login = true,
  }) : super(key: key);

  final bool login;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          login ? "Don't have an account ? " : "Already have an account ? ",
          style: TextStyle(color: primaryColor),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "Sign Up" : "Sign In",
            style: TextStyle(
              color: primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
