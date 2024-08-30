import 'package:flutter/material.dart';

class HomeViewmodel extends ChangeNotifier {
  int _currentFilter = 0;
  int get currentFilter => _currentFilter;

  changeFilter(int index) {
    _currentFilter = index;
    notifyListeners();
  }
}
