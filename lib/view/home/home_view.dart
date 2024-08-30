import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:qhire_event/view/home/widget/home_top_container.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Logo",
          style: theme.textTheme.bodyLarge!.copyWith(
            color: theme.colorScheme.primary,
          ),
        ),
        actions: [
          Icon(
            Icons.bookmark,
            color: theme.colorScheme.primary,
          ),
          Icon(
            Icons.notifications_active_rounded,
            color: theme.colorScheme.primary,
          ),
          const Gap(10)
        ],
      ),
      body: const Column(
        children: [
          HomeTopContainer(),
        ],
      ),
    );
  }
}
