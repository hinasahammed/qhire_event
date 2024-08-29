import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:qhire_event/res/components/common/custom_button.dart';

class Upload extends StatelessWidget {
  final String fileName;
  const Upload({super.key, required this.fileName});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        Row(
          children: [
            Text(
              "Upload $fileName ",
              style: theme.textTheme.labelLarge!.copyWith(
                color: theme.colorScheme.onSurface,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "(Max file size: 3Mb)",
              style: theme.textTheme.labelSmall!.copyWith(
                color: theme.colorScheme.onSurface,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        const Gap(10),
        Container(
          padding: const EdgeInsets.all(8),
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(
              color: theme.colorScheme.onSurface.withOpacity(.50),
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              CustomButton(
                onPressed: () {},
                btnText: "Choose file",
              ),
              Text(
                "No file chosen",
                style: theme.textTheme.bodyLarge!.copyWith(
                  color: theme.colorScheme.onSurface,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
