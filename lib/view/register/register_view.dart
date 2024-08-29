import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:qhire_event/res/components/common/custom_button.dart';
import 'package:qhire_event/res/components/common/custom_textformfield.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Gap(50),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(16),
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: theme.colorScheme.onSurface.withOpacity(.50),
                  ),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      "Register",
                      style: theme.textTheme.titleLarge!.copyWith(
                        color: theme.colorScheme.onSurface,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Gap(5),
                    Text(
                      "Create your account",
                      style: theme.textTheme.labelLarge!.copyWith(
                        color: theme.colorScheme.onSurface,
                      ),
                    ),
                    const Gap(20),
                    CustomTextformfield(
                      controller: TextEditingController(),
                      label: "Full name",
                    ),
                    const Gap(10),
                    CustomTextformfield(
                      controller: TextEditingController(),
                      label: "Mobile number",
                    ),
                    const Gap(10),
                    CustomTextformfield(
                      controller: TextEditingController(),
                      label: "Email",
                    ),
                    const Gap(10),
                    CustomTextformfield(
                      controller: TextEditingController(),
                      label: "Gender",
                    ),
                    const Gap(10),
                    CustomTextformfield(
                      controller: TextEditingController(),
                      label: "Qualification",
                    ),
                    const Gap(10),
                    CustomTextformfield(
                      controller: TextEditingController(),
                      label: "Experience",
                    ),
                    const Gap(10),
                    CustomTextformfield(
                      controller: TextEditingController(),
                      label: "Linkedin Profile",
                    ),
                    const Gap(10),
                    CustomTextformfield(
                      controller: TextEditingController(),
                      label: "District",
                    ),
                    const Gap(10),
                    CustomTextformfield(
                      controller: TextEditingController(),
                      label: "Area of Expertise",
                    ),
                    const Gap(10),
                    Row(
                      children: [
                        Text(
                          "Upload photograph ",
                          style: theme.textTheme.labelLarge!.copyWith(
                            color: theme.colorScheme.onSurface,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "(Max file size: 3Mb)",
                          style: theme.textTheme.labelSmall!.copyWith(
                            color: theme.colorScheme.onSurface,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: theme.colorScheme.onSurface.withOpacity(.50),
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        children: [
                          CustomButton(
                            onPressed: () {},
                            btnText: "Choose file",
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
