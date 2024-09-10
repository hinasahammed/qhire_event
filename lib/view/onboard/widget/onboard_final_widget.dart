import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:qhire_event/assets/images/image_asset.dart';
import 'package:qhire_event/res/components/common/customText/body_large_text.dart';
import 'package:qhire_event/res/components/common/customText/title_large_text.dart';
import 'package:qhire_event/res/components/common/custom_button.dart';
import 'package:qhire_event/view/login/login_view.dart';

class OnboardFinalWidget extends StatelessWidget {
  const OnboardFinalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.sizeOf(context);
    var orientation = MediaQuery.of(context).orientation;
    if (orientation == Orientation.portrait) {
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
                border: Border(
                    top: BorderSide(
                  color: theme.colorScheme.primary,
                )),
              ),
              child: Column(
                children: [
                  const Spacer(),
                  const TitleLargeText(
                    text: "Hello!",
                    fontWeight: FontWeight.bold,
                  ),
                  const Gap(30),
                  const BodyLargeText(
                    text:
                        "Your personalized gateway to success starts here with our job finder app’s welcome screen",
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
    } else {
      return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(ImageAsset.onboardFour),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(200),
                      topRight: Radius.circular(200),
                    ),
                    border: Border(
                        top: BorderSide(
                      color: theme.colorScheme.primary,
                    )),
                  ),
                  child: Column(
                    children: [
                      const Gap(30),
                      const TitleLargeText(
                        text: "Hello!",
                        fontWeight: FontWeight.bold,
                      ),
                      const Gap(30),
                      SizedBox(
                        width: size.width * .6,
                        child: const BodyLargeText(
                          text:
                              "Your personalized gateway to success starts here with our job finder app’s welcome screen",
                          textAlign: TextAlign.center,
                        ),
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
          ),
        ),
      );
    }
  }
}
