import 'package:flutter/material.dart';
import 'package:flutter_hat/constants.dart';

class UserAccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: primaryColor),
        title: Text(
          'User Account',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      body: Container(),
    );
  }
}
