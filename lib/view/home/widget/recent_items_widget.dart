import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:qhire_event/assets/icons/icon_asset.dart';
import 'package:qhire_event/res/components/common/customText/label_large_text.dart';

class RecentItemsWidget extends StatefulWidget {
  const RecentItemsWidget({super.key});

  @override
  State<RecentItemsWidget> createState() => _RecentItemsWidgetState();
}

class _RecentItemsWidgetState extends State<RecentItemsWidget> {
  List recentList = [
    "UI/UX Designer",
    "UI Designer",
    "Design Lead",
  ];
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListView.separated(
      itemCount: recentList.length,
      scrollDirection: Axis.horizontal,
      separatorBuilder: (context, index) => const Gap(10),
      itemBuilder: (context, index) => Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: theme.colorScheme.onSurface.withOpacity(.1),
        ),
        child: Row(
          children: [
            Image.asset(IconAsset.recentIcon),
            const Gap(5),
            LabelLargeText(
              text: recentList[index],
            ),
          ],
        ),
      ),
    );
  }
}
