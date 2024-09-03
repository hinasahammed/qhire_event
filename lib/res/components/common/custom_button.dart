import 'package:flutter/material.dart';
import 'package:qhire_event/res/components/common/customText/body_large_text.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onPressed;
  final String btnText;
  final Color? backgroundColor;
  final Color? foreground;
  const CustomButton({
    super.key,
    this.onPressed,
    required this.btnText,
    this.backgroundColor,
    this.foreground,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
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
