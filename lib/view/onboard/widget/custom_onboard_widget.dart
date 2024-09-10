import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:qhire_event/res/components/common/customText/body_large_text.dart';
import 'package:qhire_event/res/components/common/customText/label_large_text.dart';
import 'package:qhire_event/res/components/common/customText/title_large_text.dart';
import 'package:qhire_event/res/components/common/custom_button.dart';
import 'package:qhire_event/viewmodel/provider/onboard/onboard_viewmodel.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomOnboardWidget extends StatelessWidget {
  final PageController pageController;
  final String imageUrl;
  final String warmingText;
  final String desc;
  final void Function()? onPressed;
  final String btnText;
  const CustomOnboardWidget(
      {super.key,
      required this.pageController,
      required this.imageUrl,
      required this.warmingText,
      required this.desc,
      this.onPressed,
      required this.btnText});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    var orientation = MediaQuery.of(context).orientation;
    if (orientation == Orientation.portrait) {
      return Consumer<OnboardViewmodel>(
        builder: (context, value, child) => Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Spacer(),
            Image.asset(imageUrl),
            const Spacer(),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
                border: Border(
                    top: BorderSide(
                  color: theme.colorScheme.primary,
                )),
              ),
              child: Column(
                children: [
                  AnimatedSmoothIndicator(
                    activeIndex: value.currentPage,
                    onDotClicked: (index) {
                      pageController.animateToPage(
                        index,
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.easeIn,
                      );
                    },
                    count: 3,
                    duration: const Duration(milliseconds: 800),
                    effect: ExpandingDotsEffect(
                      dotHeight: 10,
                      activeDotColor: theme.colorScheme.primary,
                    ),
                  ),
                  const Gap(30),
                  TitleLargeText(
                    text: warmingText,
                    fontWeight: FontWeight.bold,
                  ),
                  BodyLargeText(
                    text: desc,
                    textAlign: TextAlign.center,
                  ),
                  const Gap(30),
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: CustomButton(
                      backgroundColor: theme.colorScheme.primary,
                      foreground: theme.colorScheme.onPrimary,
                      onPressed: onPressed,
                      btnText: btnText,
                    ),
                  ),
                  if (btnText != "Get started!")
                    TextButton(
                      onPressed: () {
                        pageController.jumpToPage(2);
                      },
                      child: const LabelLargeText(
                        text: "Skip",
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
      return Consumer<OnboardViewmodel>(
        builder: (context, value, child) => SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(imageUrl),
              const Gap(30),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                  border: Border(
                      top: BorderSide(
                    color: theme.colorScheme.primary,
                  )),
                ),
                child: Column(
                  children: [
                    const Gap(10),
                    AnimatedSmoothIndicator(
                      activeIndex: value.currentPage,
                      onDotClicked: (index) {
                        pageController.animateToPage(
                          index,
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.easeIn,
                        );
                      },
                      count: 3,
                      duration: const Duration(milliseconds: 800),
                      effect: ExpandingDotsEffect(
                        dotHeight: 10,
                        activeDotColor: theme.colorScheme.primary,
                      ),
                    ),
                    const Gap(30),
                    TitleLargeText(
                      text: warmingText,
                      fontWeight: FontWeight.bold,
                    ),
                    BodyLargeText(
                      text: desc,
                      textAlign: TextAlign.center,
                    ),
                    const Gap(30),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: CustomButton(
                        backgroundColor: theme.colorScheme.primary,
                        foreground: theme.colorScheme.onPrimary,
                        onPressed: onPressed,
                        btnText: btnText,
                      ),
                    ),
                    if (btnText != "Get started!")
                      TextButton(
                        onPressed: () {
                          pageController.jumpToPage(2);
                        },
                        child: const LabelLargeText(
                          text: "Skip",
                        ),
                      ),
                    const Gap(20),
                  ],
                ),
              )
            ],
          ),
        ),
      );
    }
  }
}
