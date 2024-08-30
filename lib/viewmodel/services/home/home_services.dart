import 'package:flutter/material.dart';
import 'package:qhire_event/view/home/widget/filter_sheet_widget.dart';

class HomeServices {
  void showFilter(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => const FilterSheetWidget(),
    );
  }
}
