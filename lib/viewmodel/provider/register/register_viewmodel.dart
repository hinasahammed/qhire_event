import 'package:file_picker/file_picker.dart';
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

  Future<void> pickFile() async {
    print("object");
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      // If the user picked a file, you can access it here
      PlatformFile file = result.files.first;
      print('File name: ${file.name}');
      print('File size: ${file.size}');
      print('File path: ${file.path}');
    } else {
      // The user canceled the picker
      print('No file selected');
    }
  }
}
