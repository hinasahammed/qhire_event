import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:qhire_event/res/components/common/custom_textformfield.dart';
import 'package:qhire_event/view/jobs/find_your_jobs_widget.dart';

class JobsView extends StatelessWidget {
  const JobsView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Jobs"),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            SizedBox(
              height: 50,
              child: CustomTextformfield(
                prefix: Icon(
                  Icons.location_on,
                  color: theme.colorScheme.primary,
                ),
                label: "Bangalore, Karnataka",
              ),
            ),
            const Gap(20),
            const FindYourJobsWidget()
          ],
        ),
      ),
    );
  }
}
