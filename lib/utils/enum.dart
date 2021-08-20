import 'package:flutter_hat/models/holiday_model.dart';
import 'package:recase/recase.dart';

extension Value on HolidayType {
  String value() => this.toString().split('.').last.titleCase;
}
