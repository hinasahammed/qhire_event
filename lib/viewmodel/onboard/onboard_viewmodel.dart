import 'package:flutter/material.dart';

class OnboardViewmodel extends ChangeNotifier {
  int _currentPage = 0;
  int get currentPage => _currentPage;

  void changePange(int pagge) {
    _currentPage = pagge;
    notifyListeners();
  }
}
