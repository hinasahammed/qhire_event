import 'package:flutter/material.dart';

class CustomTextformfield extends StatelessWidget {
  final TextEditingController? controller;
  final String label;
  final Widget? suffix;
  const CustomTextformfield(
      {super.key, this.controller, required this.label, this.suffix});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: label,
        suffixIcon: suffix,
      ),
    );
  }
}
