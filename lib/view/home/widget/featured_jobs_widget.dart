import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:qhire_event/res/components/common/customText/body_large_text.dart';
import 'package:qhire_event/res/components/common/customText/label_large_text.dart';
import 'package:qhire_event/res/components/common/customText/title_large_text.dart';
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
          const TitleLargeText(
            text: "Featured Jobs",
            fontWeight: FontWeight.bold,
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
                          child: LabelLargeText(
                            text: data.postDate,
                            textColor: theme.colorScheme.primary,
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
                              BodyLargeText(
                                text: data.jobName,
                                fontWeight: FontWeight.bold,
                              ),
                              BodyLargeText(
                                text: data.companyName,
                                textColor:
                                    theme.colorScheme.onSurface.withOpacity(.5),
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
                              BodyLargeText(
                                text: data.location,
                                textColor:
                                    theme.colorScheme.onSurface.withOpacity(.5),
                              ),
                              const Gap(5),
                              Container(
                                padding: const EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: theme.colorScheme.primary),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: LabelLargeText(
                                  text: data.jobType,
                                  textColor: theme.colorScheme.primary,
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
