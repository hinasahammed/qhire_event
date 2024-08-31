import 'package:flutter/material.dart';

class EventViewmodel extends ChangeNotifier {
  int _currentTabIndex = 0;
  int get currentTabIndex => _currentTabIndex;

  void changeIndex(int index) {
    _currentTabIndex = index;
    notifyListeners();
  }
}
