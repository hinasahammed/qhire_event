import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:qhire_event/res/components/common/customText/body_large_text.dart';
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
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: BodyLargeText(
          text: "Logo",
          textColor: theme.colorScheme.primary,
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
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeTopContainer(),
            SizedBox(
              height: 80,
              child: HomeTabItemsWidget(),
            ),
            RecomendedWidget(),
            FeaturedJobsWidget(),
          ],
        ),
      ),
    );
  }
}
