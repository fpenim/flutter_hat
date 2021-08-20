import 'package:flutter/material.dart';

class UserModel extends ChangeNotifier {
  /// Internal, private state of the user.
  User _user = User();

  double getAllowance() => _user.yearAllowance;

  void setAllowance(double allowance) {
    _user.yearAllowance = allowance;
    notifyListeners();
  }

  String getUsername() => _user.username;

  void setUsername(String username) {
    _user.username = username;
    notifyListeners();
  }
}

class User {
  String username;
  double yearAllowance;

  User({
    this.username = '',
    this.yearAllowance = 0,
  });

  @override
  int get hashCode => username.hashCode;

  @override
  bool operator ==(Object other) =>
      other is User && other.username == this.username;
}
