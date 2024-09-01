import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';
import 'package:gap/gap.dart';

class ResumeView extends StatelessWidget {
  const ResumeView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Resume"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                  color: theme.colorScheme.onSurface.withOpacity(.2),
                ),
              ),
              child: const PDF(
                enableSwipe: true,
                swipeHorizontal: true,
                autoSpacing: false,
                pageFling: false,
              ).fromAsset("assets/images/Basic_Resume.docx.pdf"),
            ),
            const Gap(30),
            DottedBorder(
              borderType: BorderType.RRect,
              radius: const Radius.circular(20),
              padding: const EdgeInsets.all(6),
              dashPattern: const [8, 2],
              color: theme.colorScheme.primary,
              child: Container(
                padding: const EdgeInsets.all(8),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Upload Different File",
                      style: theme.textTheme.bodyLarge!.copyWith(
                        color: theme.colorScheme.onSurface,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Gap(10),
                    Icon(
                      Icons.file_upload_outlined,
                      color: theme.colorScheme.primary,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
