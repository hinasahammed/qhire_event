import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qhire_event/res/components/event/cancelled_event_list.dart';
import 'package:qhire_event/res/components/event/upcoming_event_list.dart';
import 'package:qhire_event/view/event/widget/event_tabbar_view_widget.dart';
import 'package:qhire_event/viewmodel/provider/event/event_viewmodel.dart';

class EventView extends StatelessWidget {
  const EventView({super.key});

  @override
  Widget build(BuildContext context) {
    final eventProvider = Provider.of<EventViewmodel>(context, listen: false);
    final theme = Theme.of(context);
    return Consumer<EventViewmodel>(builder: (context, value, child) => DefaultTabController(
      length: 2,
      initialIndex: value.currentTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Event"),
          automaticallyImplyLeading: false,
        ),
        body: Column(
            children: [
              TabBar(
                onTap: (value) {
                  eventProvider.changeIndex(value);
                },
                dividerColor: Colors.transparent,
                indicatorColor: Colors.transparent,
                tabs: [
                  Tab(
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: theme.colorScheme.primary),
                        color: value.currentTabIndex == 0
                            ? theme.colorScheme.primary
                            : theme.colorScheme.surface,
                      ),
                      child: Text(
                        "Upcoming",
                        style: theme.textTheme.labelLarge!.copyWith(
                          color: value.currentTabIndex == 0
                              ? theme.colorScheme.onPrimary
                              : theme.colorScheme.onSurface,
                        ),
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: theme.colorScheme.primary),
                        color: value.currentTabIndex == 1
                            ? theme.colorScheme.primary
                            : theme.colorScheme.surface,
                      ),
                      child: Text(
                        "Cancelled",
                        style: theme.textTheme.labelLarge!.copyWith(
                          color: value.currentTabIndex == 1
                              ? theme.colorScheme.onPrimary
                              : theme.colorScheme.onSurface,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    EventTabbarViewWidget(
                      list: upcominEventList,
                    ),
                    EventTabbarViewWidget(
                      list: cancelledEventList,
                    ),
                  ],
                ),
              )
            ],
          ),
      ),
    ),);
  }
}
