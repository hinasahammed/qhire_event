import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:qhire_event/res/components/common/custom_textformfield.dart';
import 'package:qhire_event/res/components/home/saved_job_list.dart';

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
                  return Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: theme.colorScheme.onSurface.withOpacity(.1),
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color:
                                  theme.colorScheme.onSurface.withOpacity(.1),
                            ),
                          ),
                          child: Image.asset(
                            data.imageUrl,
                            width: 40,
                            height: 40,
                          ),
                        ),
                        const Gap(20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              data.companyName,
                              style: theme.textTheme.bodyLarge!.copyWith(
                                color: theme.colorScheme.onSurface,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              data.jobName,
                              style: theme.textTheme.labelLarge!.copyWith(
                                color:
                                    theme.colorScheme.onSurface.withOpacity(.5),
                              ),
                            )
                          ],
                        ),
                        const Spacer(),
                        Icon(
                          Icons.bookmark,
                          color: theme.colorScheme.primary,
                        )
                      ],
                    ),
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
