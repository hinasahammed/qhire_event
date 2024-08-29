import 'package:flutter/material.dart';

class CustomDropdownField extends StatelessWidget {
  final String hint;
  const CustomDropdownField({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return DropdownButtonFormField(
      items: const [],
      hint: Text(
        hint,
        style: theme.textTheme.labelLarge!.copyWith(
          color: theme.colorScheme.onSurface,
        ),
      ),
      icon: const Icon(Icons.keyboard_arrow_down),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      onChanged: (value) {},
    );
  }
}
