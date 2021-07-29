import 'dart:collection';

import 'package:flutter/material.dart';

class HolidayModel extends ChangeNotifier {
  /// Internal, private state of the holidays.
  final List<String> _holidays = [
    '1',
    '1',
    '2',
    '3',
    '5',
    '8',
    '13',
    '21',
    '34',
    '55'
  ];

  /// An unmodifiable view of the holidays.
  UnmodifiableListView<String> get holidays => UnmodifiableListView(_holidays);

  /// Adds [holiday] to the list of holidays.
  void add(String holiday) {
    _holidays.add(holiday);
    notifyListeners();
  }

  /// Removes [holiday] from the list of holidays.
  void remove(String holiday) {
    _holidays.remove(holiday);
    notifyListeners();
  }
}
