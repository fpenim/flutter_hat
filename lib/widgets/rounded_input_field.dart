import 'package:flutter/material.dart';
import 'package:flutter_hat/constants.dart';
import 'package:flutter_hat/widgets/text_field_container.dart';

class RoundedInputField extends StatelessWidget {
  const RoundedInputField({
    Key? key,
    required this.hintText,
    required this.onChanged,
    this.icon = Icons.person,
  }) : super(key: key);

  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        decoration: InputDecoration(
          icon: Icon(icon, color: kPrimaryColor),
          hintText: hintText,
          border: InputBorder.none,
        ),
        onChanged: onChanged,
      ),
    );
  }
}
