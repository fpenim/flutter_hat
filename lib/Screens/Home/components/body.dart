import 'package:flutter/material.dart';
import 'package:flutter_hat/Screens/Home/components/holiday_container.dart';

import 'book_holidays_row.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 0.0, 8.0, 8.0),
            child: BookHolidaysRow(),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 0.0, 8.0, 8.0),
            child: Row(
              children: [
                Text(
                  'Upcoming holidays',
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      ?.copyWith(fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ),
          Container(
            height: size.height * 0.7,
            child: ListView.builder(
              itemCount: bookedHolidays.length,
              itemBuilder: (context, i) => HolidayContainer(bookedHolidays[i]),
            ),
          )
        ],
      ),
    );
  }
}

List<String> bookedHolidays = ['1', '1', '2', '3', '5', '8', '13', '21'];
