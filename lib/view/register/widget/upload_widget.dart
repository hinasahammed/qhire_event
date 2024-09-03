import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:qhire_event/res/components/common/customText/body_large_text.dart';
import 'package:qhire_event/res/components/common/customText/label_large_text.dart';
import 'package:qhire_event/res/components/common/custom_button.dart';

class UploadWidget extends StatelessWidget {
  final String fileName;
  const UploadWidget({super.key, required this.fileName});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        Row(
          children: [
            LabelLargeText(
              text: "Upload $fileName ",
              fontWeight: FontWeight.bold,
            ),
            RichText(
              text: TextSpan(
                text: "*",
                style: theme.textTheme.bodyLarge!.copyWith(
                  color: theme.colorScheme.error,
                ),
                children: [
                  TextSpan(
                    text: "(Max file size: 3Mb)",
                    style: theme.textTheme.labelSmall!.copyWith(
                      color: theme.colorScheme.onSurface,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            )
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
                backgroundColor: theme.colorScheme.onSurface.withOpacity(.4),
                foreground: theme.colorScheme.surface,
                onPressed: () {},
                btnText: "Choose file",
              ),
              const Gap(10),
              const BodyLargeText(
                text: "No file chosen",
              ),
            ],
          ),
        ),
      ],
    );
  }
}
