import 'package:flutter/material.dart';
import 'package:flutter_hat/components/rounded_button.dart';
import 'package:intl/intl.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        BookHolidaysRow(),
        Container(
          height: size.height * 0.5,
          child: ListView.builder(
            itemCount: bookedHolidays.length,
            itemBuilder: (context, i) {
              return Container(
                child: Text(
                  bookedHolidays[i],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}

List<String> bookedHolidays = ['1', '1', '2', '3', '5', '8', '13', '21'];

class BookHolidaysRow extends StatelessWidget {
  const BookHolidaysRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
              press: () {},
              widthRatio: 0.3,
            ),
          ],
        ),
      ],
    );
  }
}

String formatDate(DateTime date) => new DateFormat("MMM, dd/yyyy").format(date);
