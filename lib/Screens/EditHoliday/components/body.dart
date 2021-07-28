import 'package:flutter/material.dart';
import 'package:flutter_hat/components/rounded_button.dart';
import 'package:flutter_hat/constants.dart';

import 'holiday_summary.dart';

class Body extends StatefulWidget {
  Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  DateTimeRange? selectedRange;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Flexible(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'You have [xxx] days of holidays available',
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1
                      ?.copyWith(fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Select dates:',
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      ?.copyWith(fontWeight: FontWeight.w400),
                ),
                Theme(
                  data: Theme.of(context).copyWith(
                      colorScheme: Theme.of(context).colorScheme.copyWith(
                            brightness: Brightness.dark,
                            onSurface: kTextColor,
                          )),
                  child: Builder(
                    builder: (context) => IconButton(
                      onPressed: () => _selectDateRange(context),
                      icon: Icon(Icons.calendar_today_rounded),
                    ),
                  ),
                ),
                //DateRangeFormField(),
              ],
            ),
          ),
          Divider(
            thickness: 2.0,
            indent: 16.0,
            endIndent: 16.0,
            color: Theme.of(context).primaryColorLight,
          ),
          Flexible(
            flex: 2,
            child: selectedRange != null
                ? HolidaySummary(selectedRange: selectedRange)
                : Container(),
          ),
          Flexible(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RoundedButton(
                  text: 'BOOK',
                  press: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Valid!')),
                    );
                  },
                  widthRatio: 0.6,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  _selectDateRange(BuildContext context) async {
    await showDateRangePicker(
      context: context,
      firstDate: DateTime(DateTime.now().year - 1),
      lastDate: DateTime(DateTime.now().year + 1),
      initialEntryMode: DatePickerEntryMode.calendarOnly,
      initialDateRange: selectedRange,
    ).then((value) {
      if (value != null) {
        setState(() {
          selectedRange = value;
        });
      }
    });
  }
}
