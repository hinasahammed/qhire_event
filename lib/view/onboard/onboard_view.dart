import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qhire_event/assets/images/image_asset.dart';
import 'package:qhire_event/view/onboard/widget/custom_onboard_widget.dart';
import 'package:qhire_event/view/onboard/widget/onboard_final_widget.dart';
import 'package:qhire_event/viewmodel/onboard/onboard_viewmodel.dart';

class OnboardView extends StatefulWidget {
  const OnboardView({super.key});

  @override
  State<OnboardView> createState() => _OnboardViewState();
}

class _OnboardViewState extends State<OnboardView> {
  final pageController = PageController();
  @override
  Widget build(BuildContext context) {
    final onboardProvider =
        Provider.of<OnboardViewmodel>(context, listen: false);
    return Scaffold(
      body: SafeArea(
        child: PageView(
          onPageChanged: (value) {
            onboardProvider.changePange(value);
          },
          controller: pageController,
          children: [
            CustomOnboardWidget(
              pageController: pageController,
              onPressed: () {
                pageController.nextPage(
                  duration: const Duration(milliseconds: 600),
                  curve: Curves.easeIn,
                );
              },
              imageUrl: ImageAsset.onboardFirst,
              warmingText: "Hi!",
              desc: "Welcome to CareerHub! Look for your dream job, with us.",
              btnText: "Next",
            ),
            CustomOnboardWidget(
              pageController: pageController,
              onPressed: () {
                pageController.nextPage(
                  duration: const Duration(milliseconds: 600),
                  curve: Curves.easeIn,
                );
              },
              imageUrl: ImageAsset.onboardSecond,
              warmingText: "Together we can!",
              desc: "Find a suitable job without even leaving home.",
              btnText: "Next",
            ),
            CustomOnboardWidget(
              pageController: pageController,
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OnboardFinalWidget(),
                  ),
                );
              },
              imageUrl: ImageAsset.onboardThird,
              warmingText: "Easy to figure out!",
              desc:
                  "No need to delve into it for a long time, everything is clear and simple.",
              btnText: "Get started!",
            ),
          ],
        ),
      ),
    );
  }
}
