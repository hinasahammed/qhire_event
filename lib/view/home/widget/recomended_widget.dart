import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:qhire_event/assets/images/image_asset.dart';
import 'package:qhire_event/res/components/common/custom_button.dart';

class RecomendedWidget extends StatelessWidget {
  const RecomendedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recommended For You",
            style: theme.textTheme.titleLarge!.copyWith(
              color: theme.colorScheme.onSurface,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Gap(20),
          SizedBox(
            height: size.height * .4,
            child: ListView.separated(
              itemCount: 3,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => const Gap(10),
              itemBuilder: (context, index) => Container(
                width: size.width * .8,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: theme.colorScheme.onSurface.withOpacity(.2),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: size.width * .2,
                          height: size.height * .08,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(ImageAsset.logo),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        const Gap(20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Softroniics",
                              style: theme.textTheme.bodyLarge!.copyWith(
                                color: theme.colorScheme.onSurface,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              "UI/UX Designer",
                              style: theme.textTheme.bodyLarge!.copyWith(
                                color: theme.colorScheme.onSurface,
                              ),
                            )
                          ],
                        ),
                        const Spacer(),
                        Icon(
                          Icons.bookmark_outline,
                          color: theme.colorScheme.primary,
                          size: 30,
                        ),
                      ],
                    ),
                    const Gap(10),
                    Text(
                      "2nd Floor, Maniyattukudi Asfa Building,Mavoor Road Calicut, Kerala",
                      style: theme.textTheme.bodyLarge!.copyWith(
                        color: theme.colorScheme.onSurface.withOpacity(.5),
                      ),
                    ),
                    const Gap(10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Full Time",
                          style: theme.textTheme.bodyLarge!.copyWith(
                            color: theme.colorScheme.onSurface.withOpacity(.7),
                          ),
                        ),
                        Icon(
                          Icons.circle,
                          size: 10,
                          color: theme.colorScheme.onSurface.withOpacity(.7),
                        ),
                        Text(
                          "Exp 3 Years",
                          style: theme.textTheme.bodyLarge!.copyWith(
                            color: theme.colorScheme.onSurface.withOpacity(.7),
                          ),
                        ),
                        Icon(
                          Icons.circle,
                          size: 10,
                          color: theme.colorScheme.onSurface.withOpacity(.7),
                        ),
                        Text(
                          "Remote",
                          style: theme.textTheme.bodyLarge!.copyWith(
                            color: theme.colorScheme.onSurface.withOpacity(.7),
                          ),
                        )
                      ],
                    ),
                    const Gap(30),
                    SizedBox(
                      height: 50,
                      child: CustomButton(
                          onPressed: () {},
                          backgroundColor: theme.colorScheme.primary,
                          foreground: theme.colorScheme.onPrimary,
                          btnText: "Apply"),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
