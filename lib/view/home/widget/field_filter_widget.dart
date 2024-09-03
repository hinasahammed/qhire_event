import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:qhire_event/model/filter_model.dart';
import 'package:qhire_event/res/components/common/customText/body_large_text.dart';

class FieldFilterWidget extends StatelessWidget {
  final List<FilterModel> list;
  const FieldFilterWidget({super.key, required this.list});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) => Row(
        children: [
          Checkbox(
            value: list[index].isChecked,
            checkColor: theme.colorScheme.primary,
            onChanged: (value) {},
          ),
          const Gap(10),
          BodyLargeText(
            text: list[index].filterName,
          ),
        ],
      ),
    );
  }
}
