import 'package:flutter/material.dart';
import 'package:flutter_hat/components/text_field_container.dart';
import 'package:flutter_hat/constants.dart';

class RoundedPasswordField extends StatefulWidget {
  const RoundedPasswordField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  final ValueChanged<String> onChanged;

  @override
  _RoundedPasswordFieldState createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  bool hideText = true;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: widget.onChanged,
        obscureText: hideText,
        decoration: InputDecoration(
          hintText: 'Password',
          icon: Icon(
            Icons.lock,
            color: primaryColor,
          ),
          suffixIcon: GestureDetector(
            onTap: () => setState(() => hideText = !hideText),
            child: Icon(
              hideText ? Icons.visibility : Icons.visibility_off,
              color: primaryColor,
            ),
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
