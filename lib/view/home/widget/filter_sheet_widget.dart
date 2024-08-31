import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:qhire_event/assets/icons/icon_asset.dart';
import 'package:qhire_event/res/components/home/field_filter_list.dart';
import 'package:qhire_event/res/components/home/salary_filter_list.dart';
import 'package:qhire_event/res/components/home/type_filter_list.dart';
import 'package:qhire_event/view/home/widget/field_filter_widget.dart';
import 'package:qhire_event/viewmodel/controller/home/home_viewmodel.dart';

class FilterSheetWidget extends StatelessWidget {
  const FilterSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final theme = Theme.of(context);
    final homeProvider = Provider.of<HomeViewmodel>(context, listen: false);
    return DefaultTabController(
      length: 3,
      child: Container(
        padding: const EdgeInsets.all(16),
        width: size.width,
        height: size.height * .7,
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset(IconAsset.arrowDown),
            ),
            const Gap(10),
            Text(
              "Filter",
              style: theme.textTheme.bodyLarge!.copyWith(
                color: theme.colorScheme.onSurface,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Gap(20),
            Consumer<HomeViewmodel>(
              builder: (context, value, child) => TabBar(
                onTap: (value) {
                  homeProvider.changeFilter(value);
                },
                dividerColor: Colors.transparent,
                indicatorColor: Colors.transparent,
                tabs: [
                  Tab(
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: value.currentFilter == 0
                            ? theme.colorScheme.primary
                            : null,
                        border: Border.all(
                          color: theme.colorScheme.primary,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "Field",
                        style: theme.textTheme.labelLarge!.copyWith(
                          color: value.currentFilter == 0
                              ? theme.colorScheme.onPrimary
                              : theme.colorScheme.onSurface,
                        ),
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: value.currentFilter == 1
                            ? theme.colorScheme.primary
                            : null,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: theme.colorScheme.primary,
                        ),
                      ),
                      child: Text(
                        "Type",
                        style: theme.textTheme.labelLarge!.copyWith(
                          color: value.currentFilter == 1
                              ? theme.colorScheme.onPrimary
                              : theme.colorScheme.onSurface,
                        ),
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: value.currentFilter == 2
                            ? theme.colorScheme.primary
                            : null,
                        border: Border.all(
                          color: theme.colorScheme.primary,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "Salary",
                        style: theme.textTheme.labelLarge!.copyWith(
                          color: value.currentFilter == 2
                              ? theme.colorScheme.onPrimary
                              : theme.colorScheme.onSurface,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Gap(20),
            SearchBar(
              padding: const WidgetStatePropertyAll(
                EdgeInsets.symmetric(horizontal: 16),
              ),
              leading: Icon(
                Icons.search,
                color: theme.colorScheme.primary,
              ),
              hintText: "Search",
            ),
            const Gap(20),
            Expanded(
              child: TabBarView(
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  FieldFilterWidget(
                    list: fieldFilterList,
                  ),
                  FieldFilterWidget(
                    list: typeFilterList,
                  ),
                  FieldFilterWidget(
                    list: salaryFilterList,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
