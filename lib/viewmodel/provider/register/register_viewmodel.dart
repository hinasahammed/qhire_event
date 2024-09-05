import 'package:flutter/material.dart';

class RegisterViewmodel extends ChangeNotifier {
  String _gender = 'Male';
  String _qualification = 'Bachelor';
  String _experience = '0-1 years';
  String _district = 'Alappuzha';
  String _areaExpertise = 'UI/UX';

  String get gender => _gender;
  String get qualification => _qualification;
  String get experience => _experience;
  String get district => _district;
  String get areaExpertise => _areaExpertise;

  void changeGender(String newGender) {
    _gender = newGender;
    notifyListeners();
  }

  void changeQualification(String qualification) {
    _qualification = qualification;
    notifyListeners();
  }

  void changeExperience(String experience) {
    _experience = experience;
    notifyListeners();
  }

  void chnageDistrict(String district) {
    _district = district;
    notifyListeners();
  }

  void chnageAreaExpertise(String expertise) {
    _areaExpertise = expertise;
    notifyListeners();
  }
}
