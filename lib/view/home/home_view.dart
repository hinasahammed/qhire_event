import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:qhire_event/view/home/widget/featured_jobs_widget.dart';
import 'package:qhire_event/view/home/widget/home_tab_items_widget.dart';
import 'package:qhire_event/view/home/widget/home_top_container_widget.dart';
import 'package:qhire_event/view/home/widget/recomended_widget.dart';
import 'package:qhire_event/view/savedJobs/saved_jobs.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.sizeOf(context);
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
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SavedJobs(),
                ),
              );
            },
            icon: Icon(
              Icons.bookmark_outline,
              color: theme.colorScheme.primary,
            ),
          ),
          Icon(
            Icons.notifications_active_rounded,
            color: theme.colorScheme.primary,
          ),
          const Gap(10)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeTopContainer(),
            SizedBox(
              height: size.height * .09,
              child: const HomeTabItemsWidget(),
            ),
            const RecomendedWidget(),
            const FeaturedJobsWidget(),
          ],
        ),
      ),
    );
  }
}
