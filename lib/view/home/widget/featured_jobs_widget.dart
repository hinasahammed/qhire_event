import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:qhire_event/res/components/common/custom_button.dart';
import 'package:qhire_event/res/components/home/featured_job_list.dart';

class FeaturedJobsWidget extends StatelessWidget {
  const FeaturedJobsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Featured Jobs",
            style: theme.textTheme.titleLarge!.copyWith(
              color: theme.colorScheme.onSurface,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Gap(20),
          ListView.separated(
              itemCount: featuredJobList.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) => const Gap(10),
              itemBuilder: (context, index) {
                final data = featuredJobList[index];
                return Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: theme.colorScheme.onSurface.withOpacity(.2),
                    ),
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border:
                                Border.all(color: theme.colorScheme.primary),
                          ),
                          child: Text(
                            data.postDate,
                            style: theme.textTheme.labelLarge!.copyWith(
                              color: theme.colorScheme.primary,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            width: size.width * .13,
                            height: size.height * .06,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color:
                                    theme.colorScheme.onSurface.withOpacity(.5),
                              ),
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage(data.imageUrl),
                              ),
                            ),
                          ),
                          const Gap(20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                data.jobName,
                                style: theme.textTheme.bodyLarge!.copyWith(
                                  color: theme.colorScheme.onSurface,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                data.companyName,
                                style: theme.textTheme.bodyLarge!.copyWith(
                                  color: theme.colorScheme.onSurface
                                      .withOpacity(.5),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Gap(10),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                data.location,
                                style: theme.textTheme.bodyLarge!.copyWith(
                                  color: theme.colorScheme.onSurface
                                      .withOpacity(.5),
                                ),
                              ),
                              const Gap(5),
                              Container(
                                padding: const EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: theme.colorScheme.primary),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  data.jobType,
                                  style: theme.textTheme.labelLarge!.copyWith(
                                    color: theme.colorScheme.primary,
                                  ),
                                ),
                              )
                            ],
                          ),
                          const Spacer(),
                          SizedBox(
                            height: 50,
                            child: CustomButton(
                              backgroundColor: theme.colorScheme.primary,
                              foreground: theme.colorScheme.onPrimary,
                              onPressed: () {},
                              btnText: "Apply",
                            ),
                          ),
                        ],
                      ),
                      const Gap(10)
                    ],
                  ),
                );
              })
        ],
      ),
    );
  }
}
