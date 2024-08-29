import 'package:flutter/material.dart';
import 'package:qhire_event/assets/images/image_asset.dart';
import 'package:qhire_event/view/onboard/widget/custom_onboard.dart';

class OnboardView extends StatefulWidget {
  const OnboardView({super.key});

  @override
  State<OnboardView> createState() => _OnboardViewState();
}

class _OnboardViewState extends State<OnboardView> {
  final pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: pageController,
          children: [
            CustomOnboard(
              pageController: pageController,
              imageUrl: ImageAsset.onboardFirst,
              warmingText: "Hi!",
              desc: "Welcome to CareerHub! Look for your dream job, with us.",
            ),
            CustomOnboard(
              pageController: pageController,
              imageUrl: ImageAsset.onboardSecond,
              warmingText: "Together we can!",
              desc: "Find a suitable job without even leaving home.",
            ),
            CustomOnboard(
              pageController: pageController,
              imageUrl: ImageAsset.onboardThird,
              warmingText: "Easy to figure out!",
              desc:
                  "No need to delve into it for a long time, everything is clear and simple.",
            ),
          ],
        ),
      ),
    );
  }
}
