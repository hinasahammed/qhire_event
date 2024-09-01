import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:qhire_event/res/components/certification/certificates_list.dart';

class CertificationView extends StatelessWidget {
  const CertificationView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Certification"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: certificatesList.length,
              itemBuilder: (context, index) {
                final data = certificatesList[index];
                return Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: theme.colorScheme.onSurface.withOpacity(.1),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Image.network(
                          data.imageUrl,
                        ),
                      ),
                      const Gap(10),
                      Expanded(
                          child: Text(
                        data.courseNAme,
                        style: theme.textTheme.titleLarge!.copyWith(
                          color: theme.colorScheme.onSurface,
                          fontWeight: FontWeight.bold,
                        ),
                      ))
                    ],
                  ),
                );
              },
            ),
            const Gap(30),
            DottedBorder(
              borderType: BorderType.RRect,
              radius: const Radius.circular(12),
              padding: const EdgeInsets.all(6),
              color: theme.colorScheme.primary,
              child: Container(
                padding: const EdgeInsets.all(6),
                width: double.infinity,
                child: Icon(
                  Icons.add_box_outlined,
                  color: theme.colorScheme.primary,
                  size: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
