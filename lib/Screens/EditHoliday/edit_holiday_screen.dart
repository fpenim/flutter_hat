import 'package:flutter/material.dart';
import 'package:flutter_hat/Screens/EditHoliday/components/body.dart';

class EditHolidayScreen extends StatelessWidget {
  EditHolidayScreen({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
        title: Text(title),
      ),
      body: Body(),
    );
  }
}
