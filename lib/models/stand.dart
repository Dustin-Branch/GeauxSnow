import 'package:flutter/material.dart';

class StandDto {
  final int id;
  final String name;

  StandDto({required this.id, required this.name});
}

class SelectedStandProvider extends ChangeNotifier {
  StandDto? _selectedStand;

  StandDto? get selectedStand => _selectedStand;

  void setSelectedStand(StandDto stand) {
    _selectedStand = stand;
    notifyListeners();
  }

  void clearSelectedStand() {
    _selectedStand = null;
    notifyListeners();
  }
}
