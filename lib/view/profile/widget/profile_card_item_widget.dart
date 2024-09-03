import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:qhire_event/res/components/common/customText/body_large_text.dart';

class ProfileCardItemWidget extends StatelessWidget {
  final String icon;
  final String title;
  final void Function()? onTap;
  const ProfileCardItemWidget({
    super.key,
    required this.icon,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        width: double.infinity,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          border: Border.all(
            color: theme.colorScheme.onSurface.withOpacity(.1),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Image.asset(icon),
            const Gap(20),
            BodyLargeText(
              text: title,
            ),
            const Spacer(),
            Icon(
              Icons.keyboard_arrow_right,
              color: theme.colorScheme.onSurface,
            )
          ],
        ),
      ),
    );
  }
}
