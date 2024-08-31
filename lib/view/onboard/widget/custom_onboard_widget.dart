import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:qhire_event/res/components/common/custom_button.dart';
import 'package:qhire_event/viewmodel/controller/onboard/onboard_viewmodel.dart';
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
    return Consumer<OnboardViewmodel>(
      builder: (context, value, child) => Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Spacer(),
          Image.asset(imageUrl),
          const Spacer(),
          Container(
            width: double.infinity,
            // height: size.height * .35,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
              border: Border.all(
                color: theme.colorScheme.primary,
              ),
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
                Text(
                  warmingText,
                  style: theme.textTheme.titleLarge!.copyWith(
                    color: theme.colorScheme.onSurface,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  desc,
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
                    child: Text(
                      "Skip",
                      style: theme.textTheme.labelLarge!.copyWith(
                        color: theme.colorScheme.onSurface,
                      ),
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
