import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileCardItemWidget extends StatelessWidget {
  final String icon;
  final String title;
  final void Function()? onTap;
  const ProfileCardItemWidget({
    super.key,
    required this.icon,
    required this.title, this.onTap,
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
            Text(
              title,
              style: theme.textTheme.bodyLarge!.copyWith(
                color: theme.colorScheme.onSurface,
              ),
            ),
            const Spacer(),
            const Icon(
              Icons.keyboard_arrow_right,
            )
          ],
        ),
      ),
    );
  }
}
