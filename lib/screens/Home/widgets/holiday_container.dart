import 'package:flutter/material.dart';
import 'package:flutter_hat/models/holiday_model.dart';
import 'package:flutter_hat/utils/time.dart';
import 'package:provider/provider.dart';

class HolidayContainer extends StatelessWidget {
  const HolidayContainer(
    this.holiday, {
    Key? key,
  }) : super(key: key);

  final Holiday holiday;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.1,
      height: size.height * 0.1,
      margin: EdgeInsets.symmetric(vertical: 4.0),
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 8.0, 8.0, 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  holiday.type.toString(),
                  style: Theme.of(context).textTheme.headline6,
                ),
                IconButton(
                    onPressed: () =>
                        Provider.of<HolidayModel>(context, listen: false)
                            .remove(holiday),
                    icon: Icon(
                      Icons.delete_outline_rounded,
                      color: Theme.of(context).accentColor,
                    ))
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.calendar_today_rounded,
                  color: Theme.of(context).primaryColor,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    holiday.dateRange.start.formatAsDDMMYY() +
                        ' - ' +
                        holiday.dateRange.end.formatAsDDMMYY(),
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Text(
                    '${holiday.dateRange.duration.inDays} days',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColorLight,
          borderRadius: BorderRadius.circular(16.0)),
    );
  }
}
