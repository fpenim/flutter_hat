import 'package:flutter/material.dart';
import 'package:flutter_hat/Screens/EditHoliday/edit_holiday_screen.dart';
import 'package:flutter_hat/components/rounded_button.dart';
import 'package:intl/intl.dart';

class BookHolidaysRow extends StatelessWidget {
  const BookHolidaysRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Text(
              'Your holidays',
              style: Theme.of(context).textTheme.headline6,
            ),
            Text(
              formatDate(DateTime.now()),
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundedButton(
              text: 'BOOK',
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => EditHolidayScreen(
                            title: 'Book holidays',
                          )),
                );
              },
              widthRatio: 0.3,
            ),
          ],
        ),
      ],
    );
  }
}

String formatDate(DateTime date) => new DateFormat("MMM, dd/yyyy").format(date);
