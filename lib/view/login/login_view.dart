import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:qhire_event/assets/icons/icon_asset.dart';
import 'package:qhire_event/assets/images/image_asset.dart';
import 'package:qhire_event/res/components/common/customText/body_large_text.dart';
import 'package:qhire_event/res/components/common/customText/label_large_text.dart';
import 'package:qhire_event/res/components/common/customText/title_large_text.dart';
import 'package:qhire_event/res/components/common/custom_button.dart';
import 'package:qhire_event/res/components/common/custom_textformfield.dart';
import 'package:qhire_event/res/utils/validation/text_form_field_validation.dart';
import 'package:qhire_event/view/forgetPassword/forget_password_view.dart';
import 'package:qhire_event/view/register/register_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 300,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(ImageAsset.background),
                    fit: BoxFit.fitWidth,
                  ),
                ),
                child: Image.asset(ImageAsset.logo),
              ),
              Container(
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
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      const TitleLargeText(
                        text: "Welcome back",
                        fontWeight: FontWeight.bold,
                      ),
                      const Gap(5),
                      const LabelLargeText(
                        text: "Login to your account",
                      ),
                      const Gap(20),
                      CustomTextformfield(
                        controller: emailController,
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
                      const Gap(10),
                      CustomTextformfield(
                        controller: TextEditingController(),
                        validator: (input) {
                          if (input == null || input.isEmpty) {
                            return "Enter a password";
                          }
                          if (!input.isValidPassword()) {
                            return "Password length should be 8";
                          }
                          return null;
                        },
                        suffix: Icon(
                          Icons.visibility,
                          color: theme.colorScheme.primary,
                        ),
                        label: "Password",
                      ),
                      const Gap(10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(value: true, onChanged: (value) {}),
                              const LabelLargeText(
                                text: "Remember me",
                              ),
                            ],
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const ForgetPasswordView(),
                                  ));
                            },
                            child: const Text("Forgot password?"),
                          ),
                        ],
                      ),
                      const Gap(20),
                      SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: CustomButton(
                          backgroundColor: theme.colorScheme.primary,
                          foreground: theme.colorScheme.onPrimary,
                          onPressed: () {
                            _formKey.currentState!.validate();
                          },
                          btnText: "Login",
                        ),
                      ),
                      const Gap(20),
                      const LabelLargeText(
                        text: "Or",
                      ),
                      const Gap(20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Card(
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Image.asset(
                                IconAsset.appleIcon,
                                width: 30,
                              ),
                            ),
                          ),
                          Card(
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Image.asset(
                                IconAsset.googleIcon,
                                width: 30,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Gap(20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const BodyLargeText(
                            text: "Don't have an account?",
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const RegisterView(),
                                ),
                              );
                            },
                            child: const Text("Register"),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
