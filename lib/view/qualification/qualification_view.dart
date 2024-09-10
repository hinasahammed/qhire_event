import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:qhire_event/res/components/common/customText/body_large_text.dart';
import 'package:qhire_event/res/components/common/customText/label_large_text.dart';
import 'package:qhire_event/res/components/qualification/qualification_list.dart';
import 'package:qhire_event/view/addQualification/add_qualification.dart';

class QualificationView extends StatelessWidget {
  const QualificationView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Qualification"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ListView.separated(
              shrinkWrap: true,
              itemCount: qualificationList.length,
              separatorBuilder: (context, index) => const Gap(10),
              itemBuilder: (context, index) {
                final data = qualificationList[index];
                return Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: theme.colorScheme.onSurface.withOpacity(.1),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BodyLargeText(
                            text: data.education,
                            fontWeight: FontWeight.bold,
                          ),
                          const Gap(5),
                          LabelLargeText(
                            text: data.universityCollege,
                          ),
                          const Gap(5),
                          LabelLargeText(
                            text: data.enrolledYear,
                          ),
                        ],
                      ),
                      const Spacer(),
                      Icon(
                        Icons.edit,
                        color: theme.colorScheme.primary,
                        size: 30,
                      )
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
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AddQualification(),
                    ),
                  );
                },
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
            ),
          ],
        ),
      ),
    );
  }
}
