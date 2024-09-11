import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class RegisterViewmodel extends ChangeNotifier {
  String _gender = 'Male';
  String _qualification = 'Bachelor';
  String _experience = '0-1 years';
  String _district = 'Alappuzha';
  String _areaExpertise = 'UI/UX';
  String _photographName = '';
  String _photographPath = '';
  String _resumeName = '';
  String _resumPath = '';

  String get gender => _gender;
  String get qualification => _qualification;
  String get experience => _experience;
  String get district => _district;
  String get areaExpertise => _areaExpertise;
  String get photographName => _photographName;
  String get photographPath => _photographPath;
  String get resumeName => _resumeName;
  String get resumPath => _resumPath;

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

  Future<void> pickFile(String fileType) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      PlatformFile file = result.files.first;
      if (fileType != "Resume") {
        _photographName = file.name;
        _photographPath = file.path!;
        notifyListeners();
      } else {
        _resumeName = file.name;
        _resumPath = file.path!;
        notifyListeners();
      }
    } else {
      debugPrint('No file selected');
    }
  }

  Future<void> resumePicker() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      PlatformFile file = result.files.first;

      _resumeName = file.name;
      _resumPath = file.path!;
      notifyListeners();
    } else {
      debugPrint('No file selected');
    }
  }
}
