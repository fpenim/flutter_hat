import 'package:flutter/material.dart';
import 'package:flutter_hat/models/user_model.dart';
import 'package:flutter_hat/screens/Home/widgets/body.dart';
import 'package:flutter_hat/widgets/user_image_button.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Consumer<UserModel>(
          builder: (context, model, child) => model.getUsername().isNotEmpty
              ? Text('Hello, ${model.getUsername()}!')
              : Text('Hello!'),
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
