import 'package:flutter/material.dart';

class TitleMediumText extends StatelessWidget {
  final String text;
  final Color? textColor;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  const TitleMediumText({
    super.key,
    required this.text,
    this.textColor,
    this.fontWeight,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Text(
      text,
      style: theme.textTheme.titleMedium!.copyWith(
        color: textColor ?? theme.colorScheme.onSurface,
        fontWeight: fontWeight,
      ),
      textAlign: textAlign,
    );
  }
}
