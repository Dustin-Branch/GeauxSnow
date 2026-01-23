import 'package:flutter/material.dart';
import 'package:geaux_snow/models/address.dart';

class StandDto {
  final int id;
  final String name;
  final AddressDto? address;

  StandDto({required this.id, required this.name, this.address});
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
