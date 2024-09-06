import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:qhire_event/res/components/common/customText/body_large_text.dart';
import 'package:qhire_event/viewmodel/provider/register/register_viewmodel.dart';

class ResumeView extends StatelessWidget {
  const ResumeView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final registerProvider =
        Provider.of<RegisterViewmodel>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Resume"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Consumer<RegisterViewmodel>(
          builder: (context, value, child) => Column(
            children: [
              Container(
                height: 550,
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
                ).fromPath(value.resumPath),
              ),
              const Gap(30),
              DottedBorder(
                borderType: BorderType.RRect,
                radius: const Radius.circular(20),
                padding: const EdgeInsets.all(6),
                dashPattern: const [8, 2],
                color: theme.colorScheme.primary,
                child: InkWell(
                  onTap: () {
                    registerProvider.resumePicker();
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const BodyLargeText(
                          text: "Upload Different File",
                          fontWeight: FontWeight.bold,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
