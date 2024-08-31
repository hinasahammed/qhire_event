import 'package:flutter/material.dart';

class CustomTextformfield extends StatelessWidget {
  final TextEditingController? controller;
  final String label;
  final Widget? suffix;
  final Widget? prefix;
  final bool isRequired;
  const CustomTextformfield({
    super.key,
    this.controller,
    required this.label,
    this.suffix,
    this.isRequired = false,
    this.prefix,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        prefixIcon: prefix,
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
            : Text(
                label,
                style: theme.textTheme.labelLarge!.copyWith(
                  color: theme.colorScheme.onSurface,
                ),
              ),
        suffixIcon: suffix,
      ),
    );
  }
}
