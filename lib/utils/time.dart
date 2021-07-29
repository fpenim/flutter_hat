import 'package:intl/intl.dart';

extension DateFormatting on DateTime {
  String formatAsShortDate() => new DateFormat("MMM, dd/yyyy").format(this);

  String format() => new DateFormat("dd/MM/yyyy").format(this);

  String formatAsDDMMYY() => new DateFormat("dd/MM/yy").format(this);
}
