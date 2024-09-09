import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:qhire_event/res/components/common/customText/title_large_text.dart';
import 'package:qhire_event/res/components/common/custom_button.dart';
import 'package:qhire_event/res/components/common/custom_dropdown_field.dart';
import 'package:qhire_event/res/components/common/custom_textformfield.dart';
import 'package:qhire_event/res/components/register/experience_list.dart';
import 'package:qhire_event/res/components/register/gender_list.dart';
import 'package:qhire_event/res/components/register/qualification_list.dart';
import 'package:qhire_event/res/utils/validation/text_form_field_validation.dart';
import 'package:qhire_event/viewmodel/provider/editProfile/edit_profile_viewmodel.dart';

class EditProfileView extends StatefulWidget {
  const EditProfileView({super.key});

  @override
  State<EditProfileView> createState() => _EditProfileViewState();
}

class _EditProfileViewState extends State<EditProfileView> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final editProfileProvider =
        Provider.of<EditProfileViewmodel>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Profile"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Form(
            key: _formKey,
            child: Consumer<EditProfileViewmodel>(
              builder: (context, value, child) => Column(
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
                    controller: TextEditingController(),
                    validator: (input) {
                      if (input == null || input.isEmpty) {
                        return "Enter your email";
                      }
                      if (!input.isValidEmail()) {
                        return "Enter valid email";
                      }
                      return null;
                    },
                    label: "Email",
                  ),
                  const Gap(10),
                  CustomTextformfield(
                    controller: TextEditingController(),
                    validator: (input) {
                      if (input == null || input.isEmpty) {
                        return "Enter your mobile number";
                      }
                      if (!input.isValidMobileNumber()) {
                        return "Enter valid mobile number";
                      }
                      return null;
                    },
                    label: "Phone No",
                  ),
                  const Gap(10),
                  CustomTextformfield(
                    controller: TextEditingController(),
                    validator: (input) {
                      if (input == null || input.isEmpty) {
                        return "Enter your age";
                      }
                      if (!input.isValidAge()) {
                        return "Enter valid age";
                      }
                      return null;
                    },
                    label: "Age",
                  ),
                  const Gap(10),
                  CustomDropdownField(
                    isRequired: true,
                    value: value.gender,
                    onChanged: (gender) {
                      editProfileProvider.changeGender(gender!);
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
                      editProfileProvider.changeQualification(quallification!);
                    },
                    hint: "Qualification",
                  ),
                  const Gap(10),
                  CustomTextformfield(
                    controller: TextEditingController(),
                    label: "Skills",
                  ),
                  const Gap(10),
                  CustomDropdownField(
                    isRequired: true,
                    value: value.experience,
                    items: experienceList,
                    onChanged: (experience) {
                      editProfileProvider.changeExperience(experience!);
                    },
                    hint: "Experience",
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
                      onPressed: () {
                        _formKey.currentState!.validate();
                      },
                      backgroundColor: theme.colorScheme.primary,
                      foreground: theme.colorScheme.onPrimary,
                      btnText: "Update",
                    ),
                  ),
                  const Gap(20)
                ],
              ),
            )),
      ),
    );
  }
}
