import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:qhire_event/res/components/common/customText/body_large_text.dart';
import 'package:qhire_event/res/components/common/customText/label_large_text.dart';

class JobCard extends StatelessWidget {
  final String imageUrl;
  final String companyName;
  final String jobName;
  const JobCard({
    super.key,
    required this.imageUrl,
    required this.companyName,
    required this.jobName,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.all(12),
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
                color: theme.colorScheme.onSurface.withOpacity(.1),
              ),
            ),
            child: Image.asset(
              imageUrl,
              width: 40,
              height: 40,
            ),
          ),
          const Gap(20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BodyLargeText(
                text: companyName,
                fontWeight: FontWeight.bold,
              ),
              LabelLargeText(
                text: jobName,
                textColor: theme.colorScheme.onSurface.withOpacity(.5),
              ),
              
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
  }
}
