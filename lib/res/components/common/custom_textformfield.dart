import 'package:flutter/material.dart';

class CustomTextformfield extends StatelessWidget {
  final TextEditingController? controller;
  final String label;
  final Widget? suffix;
  final bool isRequired;
  const CustomTextformfield({
    super.key,
    this.controller,
    required this.label,
    this.suffix,
    this.isRequired = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        label: isRequired
            ? RichText(
                text: TextSpan(
                  text: label,
                  style: theme.textTheme.labelLarge!.copyWith(
                    color: theme.colorScheme.onSurface,
                  ),
                  children: const [
                    TextSpan(
                      text: ' *',
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    )
                  ],
                ),
              )
            : Text(label),
        suffixIcon: suffix,
      ),
    );
  }
}
