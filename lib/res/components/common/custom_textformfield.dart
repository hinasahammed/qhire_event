import 'package:flutter/material.dart';
import 'package:qhire_event/res/components/common/customText/label_large_text.dart';

class CustomTextformfield extends StatelessWidget {
  final TextEditingController? controller;
  final String label;
  final Widget? suffix;
  final Widget? prefix;
  final bool isRequired;
  final String? Function(String?)? validator;
  const CustomTextformfield({
    super.key,
    this.controller,
    required this.label,
    this.suffix,
    this.isRequired = false,
    this.prefix,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return TextFormField(
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: theme.colorScheme.onSurface.withOpacity(.2),
          ),
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
            : LabelLargeText(text: label),
        suffixIcon: suffix,
      ),
    );
  }
}
