import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:qhire_event/res/components/common/customText/label_large_text.dart';
import 'package:qhire_event/res/components/common/custom_textformfield.dart';
import 'package:qhire_event/view/home/widget/recent_items_widget.dart';
import 'package:qhire_event/viewmodel/services/home/home_services.dart';

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
              ),
            ),
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
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
                  InkWell(
                    onTap: () {
                      HomeServices().showFilter(context);
                    },
                    child: Container(
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
                  const LabelLargeText(
                    text: "Calicut, kerala",
                  ),
                ],
              ),
              const Gap(15),
              SizedBox(
                height: size.height * .04,
                child: const RecentItemsWidget(),
              )
            ],
          ),
        )
      ],
    );
  }
}
