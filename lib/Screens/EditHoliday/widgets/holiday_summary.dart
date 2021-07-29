import 'package:flutter/material.dart';
import 'package:flutter_hat/utils/time.dart';

class HolidaySummary extends StatelessWidget {
  const HolidaySummary({
    Key? key,
    required this.selectedRange,
  }) : super(key: key);

  final DateTimeRange? selectedRange;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          'Start date: ${selectedRange?.start.format()}',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        Text(
          'End date: ${selectedRange?.end.format()}',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        Text(
          'Number of days: ${selectedRange?.duration.inDays}',
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ],
    );
  }
}
