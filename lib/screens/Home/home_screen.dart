import 'package:flutter/material.dart';
import 'package:flutter_hat/screens/Home/widgets/body.dart';
import 'package:flutter_hat/widgets/user_image_button.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Hello, [username]!',
        ),
        centerTitle: false,
        actions: [
          UserImageButton(),
        ],
      ),
      body: Container(
        child: Body(),
      ),
    );
  }
}
