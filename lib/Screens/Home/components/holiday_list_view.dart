import 'package:flutter/material.dart';

import 'holiday_container.dart';

class HolidayListView extends StatelessWidget {
  HolidayListView({
    Key? key,
    required this.holidays,
    required this.size,
  }) : super(key: key);

  final List<String> holidays;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.8,
      child: ListView.builder(
        itemCount: holidays.length,
        itemBuilder: (context, i) => HolidayContainer(holidays[i]),
      ),
    );
  }
}
