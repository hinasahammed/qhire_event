import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:qhire_event/res/components/jobs/all_job_list.dart';
import 'package:qhire_event/res/components/jobs/job_card.dart';

class FindYourJobsWidget extends StatelessWidget {
  const FindYourJobsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Find Your Jobs Today",
          style: theme.textTheme.titleLarge!.copyWith(
            color: theme.colorScheme.onSurface,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Gap(20),
        ListView.separated(
          itemCount: allJobList.length,
          shrinkWrap: true,
          separatorBuilder: (context, index) => const Gap(10),
          itemBuilder: (context, index) {
            final data = allJobList[index];
            return JobCard(
              imageUrl: data.imageUrl,
              companyName: data.companyName,
              jobName: data.jobName,
            );
          },
        )
      ],
    );
  }
}
