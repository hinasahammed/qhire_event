import 'package:flutter/material.dart';

class EditProfileViewmodel extends ChangeNotifier {
  String _gender = 'Male';
    String _qualification = 'Bachelor';
      String _experience = '0-1 years';


  String get gender => _gender;
    String get qualification => _qualification;
      String get experience => _experience;


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

}