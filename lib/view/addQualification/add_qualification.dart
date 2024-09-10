import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:qhire_event/res/components/common/custom_button.dart';
import 'package:qhire_event/res/components/common/custom_textformfield.dart';

class AddQualification extends StatefulWidget {
  const AddQualification({super.key});

  @override
  State<AddQualification> createState() => _AddQualificationState();
}

class _AddQualificationState extends State<AddQualification> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Qualification"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            CustomTextformfield(
              controller: TextEditingController(),
              label: "Education",
            ),
            const Gap(10),
            CustomTextformfield(
              controller: TextEditingController(),
              label: "University/College",
            ),
            const Gap(10),
            CustomTextformfield(
              controller: TextEditingController(),
              label: "Enrolled Year",
            ),
            const Gap(10),
            CustomTextformfield(
              controller: TextEditingController(),
              label: "Pass out Year",
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: CustomButton(
                onPressed: () {},
                backgroundColor: theme.colorScheme.primary,
                foreground: theme.colorScheme.onPrimary,
                btnText: "Update",
              ),
            ),
            const Gap(30  )
          ],
        ),
      ),
    );
  }
}
