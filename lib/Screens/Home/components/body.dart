import 'package:flutter/material.dart';
import 'package:flutter_hat/components/hello_user_row.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: size.height * 0.05,
          width: size.width,
        ),
        HelloUserRow(),
      ],
    );
  }
}
