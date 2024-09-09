import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:qhire_event/res/components/common/custom_textformfield.dart';
import 'package:qhire_event/res/components/home/saved_job_list.dart';
import 'package:qhire_event/res/components/jobs/job_card.dart';

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
            Expanded(
              child: ListView.separated(
                itemCount: savedJobList.length,
                separatorBuilder: (context, index) => const Gap(10),
                itemBuilder: (context, index) {
                  final data = savedJobList[index];
                  return JobCard(
                    imageUrl: data.companyLogo,
                    companyName: data.companyName,
                    jobName: data.jobName,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
