import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qhire_event/assets/icons/icon_asset.dart';
import 'package:qhire_event/view/home/home_view.dart';
import 'package:qhire_event/viewmodel/tabbar/tabbar_viewmodel.dart';

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
        body: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            const HomeView(),
            Container(
              color: Colors.amber,
            ),
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.purple,
            )
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
                    ? Image.asset(IconAsset.homeColoured)
                    : Image.asset(IconAsset.homeOutline),
              ),
              Tab(
                text: "Event",
                icon: value.currentPageIndex == 1
                    ? Image.asset(IconAsset.eventColoured)
                    : Image.asset(IconAsset.eventOutline),
              ),
              Tab(
                text: "Jobs",
                icon: value.currentPageIndex == 2
                    ? Image.asset(IconAsset.jobsColoured)
                    : Image.asset(IconAsset.jobsOutline),
              ),
              Tab(
                text: "Profile",
                icon: value.currentPageIndex == 3
                    ? Image.asset(IconAsset.profileColoured)
                    : Image.asset(IconAsset.profileOutline),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
