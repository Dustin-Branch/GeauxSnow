import 'package:flutter/material.dart';
import 'package:geaux_snow/models/user.dart';

class AppState extends ChangeNotifier {
  UserDto? user;
  int? selectedStandId;

  void setUser(UserDto newUser) {
    user = newUser;
    notifyListeners();
  }

  void setSelectedStandId(int id) {
    selectedStandId = id;
    notifyListeners();
  }
}
