import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:qhire_event/res/components/common/custom_textformfield.dart';

class HomeTopContainer extends StatelessWidget {
  const HomeTopContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.sizeOf(context);
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                color: theme.colorScheme.onSurface.withOpacity(.1),
              )),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              )),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 50,
                      child: CustomTextformfield(
                        prefix: Icon(
                          Icons.search,
                          color: theme.colorScheme.primary,
                        ),
                        suffix: Icon(
                          Icons.mic,
                          color: theme.colorScheme.primary,
                        ),
                        label: "Job title, keyword or company",
                      ),
                    ),
                  ),
                  const Gap(20),
                  Container(
                    height: 50,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: theme.colorScheme.onSurface.withOpacity(.5),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      Icons.tune,
                      color: theme.colorScheme.primary,
                    ),
                  ),
                ],
              ),
              const Gap(15),
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: theme.colorScheme.primary,
                  ),
                  Text(
                    "Calicut, kerala",
                    style: theme.textTheme.labelLarge!.copyWith(
                      color: theme.colorScheme.onSurface,
                    ),
                  )
                ],
              ),
              const Gap(15),
              SizedBox(
                height: size.height * .04,
                child: ListView.separated(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) => const Gap(10),
                  itemBuilder: (context, index) => Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: theme.colorScheme.onSurface.withOpacity(.1),
                    ),
                    child: Text(
                      "UI/UX Designer",
                      style: theme.textTheme.labelLarge!.copyWith(
                        color: theme.colorScheme.onSurface,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
