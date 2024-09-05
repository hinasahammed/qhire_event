import 'package:flutter/material.dart';
import 'package:qhire_event/res/components/common/customText/body_large_text.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onPressed;
  final String btnText;
  final Color? backgroundColor;
  final Color? foreground;
  final bool? isBorder;
  const CustomButton({
    super.key,
    this.onPressed,
    required this.btnText,
    this.backgroundColor,
    this.foreground,
    this.isBorder,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side: isBorder != null
                ? BorderSide(color: theme.colorScheme.primary)
                : BorderSide.none),
      ),
      onPressed: onPressed,
      child: BodyLargeText(
        text: btnText,
        fontWeight: FontWeight.w600,
        textColor: foreground,
      ),
    );
  }
}
