import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:qhire_event/res/components/common/customText/body_large_text.dart';
import 'package:qhire_event/res/components/common/customText/label_large_text.dart';
import 'package:qhire_event/res/components/common/custom_button.dart';

class SkillsView extends StatelessWidget {
  const SkillsView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Skill"),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
                border: Border.all(
              color: theme.colorScheme.onSurface.withOpacity(.1),
            )),
            child: Row(
              children: [
                const BodyLargeText(
                  text: "Add Your Skills",
                ),
                const Spacer(),
                Icon(
                  Icons.add_box_outlined,
                  color: theme.colorScheme.primary,
                )
              ],
            ),
          ),
          const Gap(20),
          SizedBox(
            height: 50,
            child: ListView.separated(
              padding: const EdgeInsets.all(8),
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => const Gap(10),
              itemBuilder: (context, index) => Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: theme.colorScheme.onSurface.withOpacity(.3),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.close,
                      color: theme.colorScheme.onSurface,
                    ),
                    const Gap(10),
                    const LabelLargeText(
                      text: "UI/UX Design",
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(16),
            child: SizedBox(
              height: 50,
              width: double.infinity,
              child: CustomButton(
                onPressed: () {},
                backgroundColor: theme.colorScheme.primary,
                foreground: theme.colorScheme.onPrimary,
                btnText: "Update",
              ),
            ),
          ),
          const Gap(20)
        ],
      ),
    );
  }
}
