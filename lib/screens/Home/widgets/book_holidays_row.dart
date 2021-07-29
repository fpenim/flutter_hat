import 'package:flutter/material.dart';
import 'package:flutter_hat/screens/EditHoliday/edit_holiday_screen.dart';
import 'package:flutter_hat/utils/time.dart';
import 'package:flutter_hat/widgets/rounded_button.dart';

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
              DateTime.now().formatAsShortDate(),
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
