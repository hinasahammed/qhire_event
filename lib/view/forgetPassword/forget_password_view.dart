import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:qhire_event/res/components/common/customText/label_large_text.dart';
import 'package:qhire_event/res/components/common/customText/title_large_text.dart';
import 'package:qhire_event/res/components/common/custom_button.dart';
import 'package:qhire_event/res/components/common/custom_textformfield.dart';
import 'package:qhire_event/res/utils/validation/text_form_field_validation.dart';

class ForgetPasswordView extends StatefulWidget {
  const ForgetPasswordView({super.key});

  @override
  State<ForgetPasswordView> createState() => _ForgetPasswordViewState();
}

class _ForgetPasswordViewState extends State<ForgetPasswordView> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TitleLargeText(
              text: "Password Recovery",
            ),
            const Gap(10),
            const LabelLargeText(
              text: "Enter your email to recover password",
            ),
            const Gap(10),
            CustomTextformfield(
              controller: TextEditingController(),
              validator: (input) {
                if (input == null || input.isEmpty) {
                  return "Enter an email";
                }
                if (!input.isValidEmail()) {
                  return "Check your email";
                }
                return null;
              },
              suffix: Icon(
                Icons.email,
                color: theme.colorScheme.primary,
              ),
              label: "Email",
            ),
            const Gap(30),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: CustomButton(
                backgroundColor: theme.colorScheme.primary,
                foreground: theme.colorScheme.onPrimary,
                onPressed: () {},
                btnText: "Recover password",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
