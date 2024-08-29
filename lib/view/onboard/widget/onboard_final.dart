import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:qhire_event/assets/images/image_asset.dart';
import 'package:qhire_event/res/components/common/custom_button.dart';
import 'package:qhire_event/view/login/login_view.dart';

class OnboardFinal extends StatelessWidget {
  const OnboardFinal({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Spacer(),
          Image.asset(ImageAsset.onboardFour),
          const Spacer(),
          Container(
            width: double.infinity,
            height: size.height * .4,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(200),
                topRight: Radius.circular(200),
              ),
              border: Border.all(
                color: theme.colorScheme.primary,
              ),
            ),
            child: Column(
              children: [
                const Spacer(),
                Text(
                  "Hello!",
                  style: theme.textTheme.titleLarge!.copyWith(
                    color: theme.colorScheme.onSurface,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Gap(30),
                Text(
                  "Your personalized gateway to success starts here with our job finder app’s welcome screen",
                  style: theme.textTheme.bodyLarge!.copyWith(
                    color: theme.colorScheme.onSurface,
                  ),
                  textAlign: TextAlign.center,
                ),
                const Gap(30),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: CustomButton(
                    foreground: theme.colorScheme.primary,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginView(),
                        ),
                      );
                    },
                    btnText: "I'm a Job Seeker",
                  ),
                ),
                const Gap(20),
              ],
            ),
          )
        ],
      ),
    );
  }
}
