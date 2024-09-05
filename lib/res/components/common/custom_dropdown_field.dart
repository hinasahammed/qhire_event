import 'package:flutter/material.dart';
import 'package:qhire_event/res/components/common/customText/label_large_text.dart';

class CustomDropdownField extends StatelessWidget {
  final String hint;
  final bool isRequired;
  final String? Function(String?)? validator;
  final List<DropdownMenuItem<String>>? items;
  final void Function(String?)? onChanged;
  final String? value;

  const CustomDropdownField({
    super.key,
    required this.hint,
    this.isRequired = false,
    this.validator,
    this.items,
    this.onChanged,
    this.value,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return DropdownButtonFormField<String>(
      onChanged: onChanged,
      value: value,
      items: items,
      validator: validator,
      icon: const Icon(Icons.keyboard_arrow_down),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        label: isRequired
            ? RichText(
                text: TextSpan(
                  text: hint,
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
            : LabelLargeText(text: hint),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: theme.colorScheme.onSurface.withOpacity(.2),
          ),
        ),
      ),
    );
  }
}
