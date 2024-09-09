import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:qhire_event/res/components/common/customText/body_large_text.dart';
import 'package:qhire_event/res/components/common/customText/title_large_text.dart';
import 'package:qhire_event/res/components/common/custom_button.dart';
import 'package:qhire_event/res/components/home/recomended_job_list.dart';

class RecomendedWidget extends StatelessWidget {
  const RecomendedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TitleLargeText(
            text: "Recommended For You",
            fontWeight: FontWeight.bold,
          ),
          const Gap(20),
          SizedBox(
            height: 330,
            child: ListView.separated(
                itemCount: recomendedJobList.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => const Gap(10),
                itemBuilder: (context, index) {
                  final data = recomendedJobList[index];
                  return Container(
                    width: size.width * .8,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: theme.colorScheme.onSurface.withOpacity(.2),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: size.width * .2,
                              height: size.height * .08,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(data.companyLogo),
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ),
                            const Gap(20),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                BodyLargeText(
                                  text: data.companyName,
                                  fontWeight: FontWeight.w400,
                                ),
                                BodyLargeText(
                                  text: data.jobName,
                                ),
                              ],
                            ),
                            const Spacer(),
                            Icon(
                              Icons.bookmark_outline,
                              color: theme.colorScheme.primary,
                              size: 30,
                            ),
                          ],
                        ),
                        const Gap(10),
                        BodyLargeText(
                          text: data.companyAddress,
                          textColor:
                              theme.colorScheme.onSurface.withOpacity(.5),
                        ),
                        const Gap(10),
                        Wrap(
                          alignment: WrapAlignment.spaceBetween,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            BodyLargeText(
                              text: data.jobType,
                              textColor:
                                  theme.colorScheme.onSurface.withOpacity(.7),
                            ),
                            const Gap(5),
                            Icon(
                              Icons.circle,
                              size: 10,
                              color:
                                  theme.colorScheme.onSurface.withOpacity(.7),
                            ),
                            const Gap(5),
                            BodyLargeText(
                              text: "Exp ${data.jobExperience} Years",
                              textColor:
                                  theme.colorScheme.onSurface.withOpacity(.7),
                            ),
                            const Gap(5),
                            Icon(
                              Icons.circle,
                              size: 10,
                              color:
                                  theme.colorScheme.onSurface.withOpacity(.7),
                            ),
                            const Gap(5),
                            BodyLargeText(
                              text: "Remote",
                              textColor:
                                  theme.colorScheme.onSurface.withOpacity(.7),
                            ),
                          ],
                        ),
                        const Gap(30),
                        SizedBox(
                          height: 50,
                          child: CustomButton(
                            onPressed: () {},
                            backgroundColor: theme.colorScheme.primary,
                            foreground: theme.colorScheme.onPrimary,
                            btnText: "Apply",
                          ),
                        )
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
