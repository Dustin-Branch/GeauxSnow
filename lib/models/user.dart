import 'package:flutter/material.dart';

class UserDto {
  final int id;
  final String name; //TODO: implement NameDto concept
  final String email;

  UserDto({required this.id, required this.name, required this.email});
}

class LoggedInUserProvider extends ChangeNotifier {
  UserDto? _user;

  LoggedInUserProvider({UserDto? initialUser}) : _user = initialUser;

  UserDto? get user => _user;

  void setUser(UserDto user) {
    _user = user;
    notifyListeners();
  }

  void clearUser() {
    _user = null;
    notifyListeners();
  }
}
