import 'package:flutter/material.dart';

List<DropdownMenuItem<String>>? genderList = [
  const DropdownMenuItem(
    value: "Male",
    child: Text("Male"),
  ),
  const DropdownMenuItem(
    value: "Female",
    child: Text("Female"),
  ),
  const DropdownMenuItem(
    value: "I prefer not to say",
    child: Text("I prefer not to say"),
  ),
];
