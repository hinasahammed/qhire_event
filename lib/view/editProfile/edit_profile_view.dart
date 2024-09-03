import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:qhire_event/res/components/common/customText/title_large_text.dart';
import 'package:qhire_event/res/components/common/custom_button.dart';
import 'package:qhire_event/res/components/common/custom_textformfield.dart';

class EditProfileView extends StatelessWidget {
  const EditProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Profile"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: 150,
                  height: 150,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: theme.colorScheme.primary.withOpacity(.5),
                      width: 2,
                    ),
                  ),
                  child: Container(
                    width: 200,
                    height: 200,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: theme.colorScheme.primary,
                        width: 2,
                      ),
                    ),
                    child: Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: theme.colorScheme.primary,
                      ),
                      child: Icon(
                        Icons.person,
                        color: theme.colorScheme.onPrimary,
                        size: 40,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 20,
                  child: Container(
                    width: 35,
                    height: 35,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.edit,
                      color: theme.colorScheme.onPrimary,
                      size: 25,
                    ),
                  ),
                )
              ],
            ),
            const Gap(20),
            const Gap(10),
            CustomTextformfield(
              controller: TextEditingController(),
              label: "Full name",
            ),
            const Gap(10),
            CustomTextformfield(
              controller: TextEditingController(),
              label: "Email",
            ),
            const Gap(10),
            CustomTextformfield(
              controller: TextEditingController(),
              label: "Phone No",
            ),
            const Gap(10),
            CustomTextformfield(
              controller: TextEditingController(),
              label: "Age",
            ),
            const Gap(10),
            CustomTextformfield(
              controller: TextEditingController(),
              label: "Gender",
            ),
            const Gap(10),
            CustomTextformfield(
              controller: TextEditingController(),
              label: "Qualifications",
            ),
            const Gap(10),
            CustomTextformfield(
              controller: TextEditingController(),
              label: "Skills",
            ),
            const Gap(10),
            CustomTextformfield(
              controller: TextEditingController(),
              label: "Experience",
            ),
            const Gap(20),
            DottedBorder(
              borderType: BorderType.RRect,
              radius: const Radius.circular(20),
              padding: const EdgeInsets.all(6),
              dashPattern: const [8, 2],
              color: theme.colorScheme.primary,
              child: Container(
                padding: const EdgeInsets.all(12),
                height: 200,
                width: double.infinity,
                child: Column(
                  children: [
                    const TitleLargeText(
                      text: "Drag and Drop Files",
                      fontWeight: FontWeight.bold,
                    ),
                    
                    const Gap(10),
                    Icon(
                      Icons.cloud_upload_outlined,
                      color: theme.colorScheme.primary,
                      size: 50,
                    ),
                    const Gap(10),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: CustomButton(
                        onPressed: () {},
                        backgroundColor: theme.colorScheme.primary,
                        foreground: theme.colorScheme.onPrimary,
                        btnText: "Browse Files",
                      ),
                    )
                  ],
                ),
              ),
            ),
            const Gap(30),
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
            const Gap(20)
          ],
        ),
      ),
    );
  }
}
