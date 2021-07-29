import 'dart:collection';

import 'package:flutter/material.dart';

class HolidayModel extends ChangeNotifier {
  /// Internal, private state of the holidays.
  final List<Holiday> _holidays = [];

  /// An unmodifiable view of the holidays.
  UnmodifiableListView<Holiday> get holidays => UnmodifiableListView(_holidays);

  /// Adds [holiday] to the list of holidays.
  void add(Holiday holiday) {
    _holidays.add(holiday);
    notifyListeners();
  }

  /// Removes [holiday] from the list of holidays.
  void remove(Holiday holiday) {
    _holidays.remove(holiday);
    notifyListeners();
  }
}

@immutable
class Holiday {
  final int id;
  final DateTimeRange dateRange;
  final HolidayType type;

  Holiday({
    required this.dateRange,
    this.type = HolidayType.HOLIDAY,
  }) : id = dateRange.hashCode;

  @override
  int get hashCode => id;

  @override
  bool operator ==(Object other) => other is Holiday && other.id == id;
}

enum HolidayType {
  HOLIDAY,
}
