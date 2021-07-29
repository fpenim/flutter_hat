import 'package:flutter_hat/models/holiday_model.dart';
import 'package:test/test.dart';

void main() {
  test('Model updates when adding holidays', () {
    final model = HolidayModel();
    final numberOfEntries = model.holidays.length;

    model.addListener(() {
      expect(model.holidays.length, greaterThan(numberOfEntries));
    });

    model.add('holiday');
  });

  test('Model updates when removing holidays', () {
    final model = HolidayModel();
    model.add('holiday');
    final numberOfEntries = model.holidays.length;

    model.addListener(() {
      expect(model.holidays.length, lessThan(numberOfEntries));
    });

    model.remove('holiday');
  });
}
