import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qhire_event/gen/assets.gen.dart';

import 'package:qhire_event/view/event/event_view.dart';
import 'package:qhire_event/view/home/home_view.dart';
import 'package:qhire_event/view/jobs/jobs_view.dart';
import 'package:qhire_event/view/profile/profile_view.dart';
import 'package:qhire_event/viewmodel/provider/tabbar/tabbar_viewmodel.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    final tabbarProvider = Provider.of<TabbarViewmodel>(context, listen: false);
    return DefaultTabController(
      initialIndex: 0,
      animationDuration: const Duration(milliseconds: 400),
      length: 4,
      child: Scaffold(
        body: const TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            HomeView(),
            EventView(),
            JobsView(),
            ProfileView(),
          ],
        ),
        bottomNavigationBar: Consumer<TabbarViewmodel>(
          builder: (context, value, child) => TabBar(
            indicatorWeight: 5,
            onTap: (value) {
              tabbarProvider.changePage(value);
            },
            tabs: [
              Tab(
                text: "Home",
                icon: value.currentPageIndex == 0
                    ? Assets.icons.homeColoured.image()
                    : Assets.icons.homeOutline.image(),
              ),
              Tab(
                text: "Event",
                icon: value.currentPageIndex == 1
                    ? Assets.icons.eventColoured.image()
                    : Assets.icons.eventOutline.image(),
              ),
              Tab(
                text: "Jobs",
                icon: value.currentPageIndex == 2
                    ? Assets.icons.jobColoured.image()
                    : Assets.icons.jobOutline.image(),
              ),
              Tab(
                text: "Profile",
                icon: value.currentPageIndex == 3
                    ? Assets.icons.profileColoured.image()
                    : Assets.icons.profileOutline.image(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
