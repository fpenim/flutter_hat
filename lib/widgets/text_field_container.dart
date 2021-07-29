import 'package:flutter/material.dart';
import 'package:flutter_hat/constants.dart';

class TextFieldContainer extends StatelessWidget {
  const TextFieldContainer({
    Key? key,
    this.widthRatio = 0.8,
    required this.child,
  }) : super(key: key);

  final double widthRatio;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * widthRatio,
      decoration: BoxDecoration(
        color: kPrimaryColorLight,
        borderRadius: BorderRadius.circular(29),
      ),
      child: child,
    );
  }
}
