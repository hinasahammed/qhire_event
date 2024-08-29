import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:qhire_event/res/components/common/custom_textformfield.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Logo",
          style: theme.textTheme.bodyLarge!.copyWith(
            color: theme.colorScheme.primary,
          ),
        ),
        actions: [
          Icon(
            Icons.bookmark,
            color: theme.colorScheme.primary,
          ),
          Icon(
            Icons.notifications_active_rounded,
            color: theme.colorScheme.primary,
          ),
          const Gap(10)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: CustomTextformfield(
                    suffix: Icon(
                      Icons.mic,
                      color: theme.colorScheme.primary,
                    ),
                    label: "Job title, keyword or company",
                  ),
                ),
                const Gap(5),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: theme.colorScheme.onSurface.withOpacity(.5),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(
                    Icons.tune,
                    color: theme.colorScheme.primary,
                  ),
                ),
              ],
            ),
            const Gap(10),
            Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: theme.colorScheme.primary,
                ),
                Text(
                  "Calicut, kerala",
                  style: theme.textTheme.labelLarge!.copyWith(
                    color: theme.colorScheme.onSurface,
                  ),
                )
              ],
            ),
            const Gap(10),
            Row(
              children: [
                for (int i = 0; i <= 1; i++)
                  Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: theme.colorScheme.onSurface.withOpacity(.1),
                    ),
                    child: Text(
                      "UI/UX Designer",
                      style: theme.textTheme.labelSmall!.copyWith(
                        color: theme.colorScheme.onSurface,
                      ),
                    ),
                  )
              ],
            )
          ],
        ),
      ),
    );
  }
}
