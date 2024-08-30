import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeTabItemsWidget extends StatefulWidget {
  const HomeTabItemsWidget({super.key});

  @override
  State<HomeTabItemsWidget> createState() => _HomeTabItemsWidgetState();
}

class _HomeTabItemsWidgetState extends State<HomeTabItemsWidget> {
  List allTabs = [
    "All",
    "Part Time",
    "Full Time",
    "Freelance",
    "Remote",
  ];
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: allTabs.length,
      scrollDirection: Axis.horizontal,
      separatorBuilder: (context, index) => const Gap(10),
      itemBuilder: (context, index) => Container(
        padding: const EdgeInsets.all(12),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: index == 0
              ? theme.colorScheme.primaryContainer
              : theme.colorScheme.surface,
          borderRadius: BorderRadius.circular(15),
          border:
              index != 0 ? Border.all(color: theme.colorScheme.primary) : null,
        ),
        child: Text(
          allTabs[index],
          style: theme.textTheme.bodyLarge!.copyWith(
            color: index == 0
                ? theme.colorScheme.onPrimaryContainer
                : theme.colorScheme.onSurface,
          ),
        ),
      ),
    );
  }
}
