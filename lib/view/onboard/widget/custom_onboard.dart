import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:qhire_event/assets/images/image_asset.dart';
import 'package:qhire_event/res/components/common/custom_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomOnboard extends StatelessWidget {
  final PageController pageController;
  final String imageUrl;
  final String warmingText;
  final String desc;
  const CustomOnboard(
      {super.key,
      required this.pageController,
      required this.imageUrl,
      required this.warmingText,
      required this.desc});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.sizeOf(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const Spacer(),
        Image.asset(ImageAsset.onboardFirst),
        const Spacer(),
       if(pageController.page!=3)
        Container(
          width: double.infinity,
          height: size.height * .33,
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
              SmoothPageIndicator(
                controller: pageController,
                count: 3,
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
                  onPressed: () {
                    pageController.nextPage(
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.easeIn,
                    );
                  },
                  btnText: pageController.page == 2 ? "Get started!" : "Next",
                ),
              ),
              if (pageController.page != 2)
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
        ),
      ],
    );
  }
}
