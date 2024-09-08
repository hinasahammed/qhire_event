import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:qhire_event/res/components/common/customText/label_large_text.dart';
import 'package:qhire_event/res/components/common/customText/title_large_text.dart';
import 'package:qhire_event/res/components/common/custom_button.dart';
import 'package:qhire_event/res/components/common/custom_dropdown_field.dart';
import 'package:qhire_event/res/components/common/custom_textformfield.dart';
import 'package:qhire_event/res/components/register/area_expertise_list.dart';
import 'package:qhire_event/res/components/register/district_list.dart';
import 'package:qhire_event/res/components/register/experience_list.dart';
import 'package:qhire_event/res/components/register/gender_list.dart';
import 'package:qhire_event/res/components/register/qualification_list.dart';
import 'package:qhire_event/res/utils/validation/text_form_field_validation.dart';
import 'package:qhire_event/view/register/widget/upload_widget.dart';
import 'package:qhire_event/view/tabbar/custom_tab_bar.dart';
import 'package:qhire_event/viewmodel/provider/register/register_viewmodel.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final registerProvider =
        Provider.of<RegisterViewmodel>(context, listen: false);
    return Scaffold(
      body: SafeArea(
        child: Consumer<RegisterViewmodel>(
          builder: (context, value, child) => SingleChildScrollView(
            child: Column(
              children: [
                const Gap(50),
                Container(
                  padding: const EdgeInsets.all(16),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: theme.colorScheme.onSurface.withOpacity(.5),
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35),
                    ),
                  ),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        const TitleLargeText(
                          text: "Register",
                          fontWeight: FontWeight.bold,
                        ),
                        const Gap(5),
                        const LabelLargeText(
                          text: "Create your account",
                        ),
                        const Gap(20),
                        CustomTextformfield(
                          isRequired: true,
                          controller: TextEditingController(),
                          validator: (input) {
                            if (input == null || input.isEmpty) {
                              return "Enter your name";
                            }
                            if (!input.isValidName()) {
                              return "Enter valid name";
                            }
                            return null;
                          },
                          label: "Full name",
                        ),
                        const Gap(10),
                        CustomTextformfield(
                          isRequired: true,
                          controller: TextEditingController(),
                          validator: (input) {
                            if (input == null || input.isEmpty) {
                              return "Enter your mobile number";
                            }
                            if (!input.isValidMobileNumber()) {
                              return "Enter valid mobille number";
                            }
                            return null;
                          },
                          label: "Mobile number",
                        ),
                        const Gap(10),
                        CustomTextformfield(
                          isRequired: true,
                          controller: TextEditingController(),
                          validator: (input) {
                            if (input == null || input.isEmpty) {
                              return "Enter your email";
                            }
                            if (!input.isValidEmail()) {
                              return "Enter valid email address";
                            }
                            return null;
                          },
                          label: "Email",
                        ),
                        const Gap(10),
                        CustomDropdownField(
                          isRequired: true,
                          value: value.gender,
                          onChanged: (gender) {
                            registerProvider.changeGender(gender!);
                          },
                          validator: (input) {
                            if (input == null || input.isEmpty) {
                              return "Enter your gender";
                            }

                            return null;
                          },
                          hint: "Gender",
                          items: genderList,
                        ),
                        const Gap(10),
                        CustomDropdownField(
                          isRequired: true,
                          value: value.qualification,
                          items: qualificationList,
                          onChanged: (quallification) {
                            registerProvider
                                .changeQualification(quallification!);
                          },
                          hint: "Qualification",
                        ),
                        const Gap(10),
                        CustomDropdownField(
                          isRequired: true,
                          value: value.experience,
                          items: experienceList,
                          onChanged: (experience) {
                            registerProvider.changeExperience(experience!);
                          },
                          hint: "Experience",
                        ),
                        const Gap(10),
                        CustomTextformfield(
                          isRequired: true,
                          controller: TextEditingController(),
                          validator: (input) {
                            if (input == null || input.isEmpty) {
                              return "Enter your linkedin profile";
                            }
                            if (!input.isValidLinkedinProfile()) {
                              return "Enter valid linkedin url";
                            }
                            return null;
                          },
                          label: "Linkedin Profile",
                        ),
                        const Gap(10),
                        CustomDropdownField(
                          isRequired: true,
                          value: value.district,
                          onChanged: (district) {
                            value.chnageDistrict(district!);
                          },
                          items: districtList,
                          hint: "District",
                        ),
                        const Gap(10),
                        CustomDropdownField(
                          isRequired: true,
                          value: value.areaExpertise,
                          onChanged: (expertise) {
                            registerProvider.chnageAreaExpertise(expertise!);
                          },
                          items: areaExpertiseList,
                          hint: "Area of Expertise",
                        ),
                        const Gap(10),
                        UploadWidget(
                          onPressed: () {
                            registerProvider.pickFile("Photograph");
                          },
                          fileName: "Photograph",
                        ),
                        const Gap(10),
                        UploadWidget(
                          onPressed: () {
                            registerProvider.pickFile("Resume");
                          },
                          fileName: "Resume",
                        ),
                        const Gap(20),
                        SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: CustomButton(
                            backgroundColor: theme.colorScheme.primary,
                            foreground: theme.colorScheme.onPrimary,
                            onPressed: () {
                              _formKey.currentState!.validate();
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
