import 'package:flutter/material.dart';
import 'package:flutter_hat/models/holiday_model.dart';
import 'package:provider/provider.dart';

import 'holiday_container.dart';

class HolidayListView extends StatelessWidget {
  HolidayListView({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.8,
      child: Consumer<HolidayModel>(
        builder: (context, model, child) => ListView.builder(
          itemCount: model.holidays.length,
          itemBuilder: (context, i) => HolidayContainer(model.holidays[i]),
        ),
      ),
    );
  }
}
