import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:qhire_event/res/components/common/customText/title_large_text.dart';
import 'package:qhire_event/res/components/jobs/all_job_list.dart';
import 'package:qhire_event/res/components/jobs/job_card.dart';

class FindYourJobsWidget extends StatelessWidget {
  const FindYourJobsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleLargeText(
          text: "Find Your Jobs Today",
          fontWeight: FontWeight.bold,
        ),
        const Gap(20),
        ListView.separated(
          itemCount: allJobList.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          separatorBuilder: (context, index) => const Gap(10),
          itemBuilder: (context, index) {
            final data = allJobList[index];
            return JobCard(
              imageUrl: data.companyLogo,
              companyName: data.companyName,
              jobName: data.jobName,
            );
          },
        )
      ],
    );
  }
}
