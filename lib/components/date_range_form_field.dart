import 'package:flutter/material.dart';
import 'package:flutter_hat/components/text_field_container.dart';
import 'package:flutter_hat/constants.dart';

class DateRangeFormField extends StatefulWidget {
  DateRangeFormField({
    Key? key,
  }) : super(key: key);

  @override
  _DateRangeFormFieldState createState() => _DateRangeFormFieldState();
}

class _DateRangeFormFieldState extends State<DateRangeFormField> {
  TextEditingController controller = TextEditingController();
  DateTimeRange? selectedRange;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        controller: controller,
        inputFormatters: [], // TODO - add date range input formatter
        decoration: InputDecoration(
          hintText: 'dates',
          border: InputBorder.none,
          suffixIcon: Theme(
            data: Theme.of(context).copyWith(
                colorScheme: Theme.of(context).colorScheme.copyWith(
                    brightness: Brightness.dark, onSurface: kTextColor)),
            child: Builder(
              builder: (context) => GestureDetector(
                child: Icon(Icons.calendar_today_rounded),
                onTap: () => _selectDateRange(context),
              ),
            ),
          ),
        ),
        textAlignVertical: TextAlignVertical.center,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'ERROR !!';
          }
          return null;
        },
      ),
      widthRatio: 0.6,
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
          controller.text = value.toString();
        });
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
