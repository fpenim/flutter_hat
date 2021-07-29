import 'package:flutter/material.dart';

import 'book_holidays_row.dart';
import 'holiday_list_view.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
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
            HolidayListView(size: size)
          ],
        ),
      ),
    );
  }
}