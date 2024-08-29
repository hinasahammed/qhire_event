import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:qhire_event/assets/icons/icon_asset.dart';
import 'package:qhire_event/res/components/common/custom_button.dart';
import 'package:qhire_event/res/components/common/custom_textformfield.dart';
import 'package:qhire_event/view/register/register_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 300,
              alignment: Alignment.center,
              child: Text(
                "Logo",
                style: theme.textTheme.headlineLarge!.copyWith(
                  color: theme.colorScheme.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
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
                        "Welcome back",
                        style: theme.textTheme.titleLarge!.copyWith(
                          color: theme.colorScheme.onSurface,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Gap(5),
                      Text(
                        "Login to your account",
                        style: theme.textTheme.labelLarge!.copyWith(
                          color: theme.colorScheme.onSurface,
                        ),
                      ),
                      const Gap(20),
                      CustomTextformfield(
                        controller: TextEditingController(),
                        suffix: Icon(
                          Icons.email,
                          color: theme.colorScheme.primary,
                        ),
                        label: "Email",
                      ),
                      const Gap(10),
                      CustomTextformfield(
                        controller: TextEditingController(),
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
                              Text(
                                "Remember me",
                                style: theme.textTheme.labelLarge!.copyWith(
                                  color: theme.colorScheme.onSurface,
                                ),
                              ),
                            ],
                          ),
                          TextButton(
                            onPressed: () {},
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
                          onPressed: () {},
                          btnText: "Login",
                        ),
                      ),
                      const Gap(20),
                      Text(
                        "Or",
                        style: theme.textTheme.labelLarge!.copyWith(
                          color: theme.colorScheme.onSurface,
                        ),
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
                          Text(
                            "Don't have an account?",
                            style: theme.textTheme.bodyLarge!.copyWith(
                              color: theme.colorScheme.onSurface,
                            ),
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
