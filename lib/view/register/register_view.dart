import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:qhire_event/res/components/common/custom_button.dart';
import 'package:qhire_event/res/components/common/custom_dropdown_field.dart';
import 'package:qhire_event/res/components/common/custom_textformfield.dart';
import 'package:qhire_event/view/register/widget/upload_widget.dart';
import 'package:qhire_event/view/tabbar/custom_tab_bar.dart';

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
                child: SingleChildScrollView(
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
                        isRequired: true,
                        controller: TextEditingController(),
                        label: "Full name",
                      ),
                      const Gap(10),
                      CustomTextformfield(
                        isRequired: true,
                        controller: TextEditingController(),
                        label: "Mobile number",
                      ),
                      const Gap(10),
                      CustomTextformfield(
                        isRequired: true,
                        controller: TextEditingController(),
                        label: "Email",
                      ),
                      const Gap(10),
                      CustomTextformfield(
                        isRequired: true,
                        controller: TextEditingController(),
                        label: "Gender",
                      ),
                      const Gap(10),
                      const CustomDropdownField(
                        isRequired: true,
                        hint: "Qualification",
                      ),
                      const Gap(10),
                      const CustomDropdownField(
                        isRequired: true,
                        hint: "Experience",
                      ),
                      const Gap(10),
                      CustomTextformfield(
                        isRequired: true,
                        controller: TextEditingController(),
                        label: "Linkedin Profile",
                      ),
                      const Gap(10),
                      const CustomDropdownField(
                        isRequired: true,
                        hint: "District",
                      ),
                      const Gap(10),
                      const CustomDropdownField(
                        isRequired: true,
                        hint: "Area of Expertise",
                      ),
                      const Gap(10),
                      const UploadWidget(fileName: "Photograph"),
                      const Gap(10),
                      const UploadWidget(fileName: "Resume"),
                      const Gap(20),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: CustomButton(
                          backgroundColor: theme.colorScheme.primary,
                          foreground: theme.colorScheme.onPrimary,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (ctx) => const CustomTabBar(),
                              ),
                            );
                          },
                          btnText: "Register",
                        ),
                      ),
                      const Gap(10),
                    ],
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
