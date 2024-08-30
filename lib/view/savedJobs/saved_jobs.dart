import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:qhire_event/res/components/common/custom_textformfield.dart';

class SavedJobs extends StatelessWidget {
  const SavedJobs({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Saved Jobs"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(
              height: 50,
              child: CustomTextformfield(
                prefix: Icon(
                  Icons.search,
                  color: theme.colorScheme.primary,
                ),
                suffix: Icon(
                  Icons.mic,
                  color: theme.colorScheme.primary,
                ),
                label: "Job title, keyword or company",
              ),
            ),
            const Gap(20),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(
                  color: theme.colorScheme.onSurface.withOpacity(.1),
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child:  Row(
                children: [],
              ),
            )
          ],
        ),
      ),
    );
  }
}
