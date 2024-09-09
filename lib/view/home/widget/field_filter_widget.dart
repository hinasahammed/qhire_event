import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:qhire_event/model/filter_model.dart';
import 'package:qhire_event/res/components/common/customText/body_large_text.dart';
import 'package:qhire_event/viewmodel/services/home/filter_services.dart';

class FieldFilterWidget extends StatefulWidget {
  final List<FilterModel> list;
  const FieldFilterWidget({super.key, required this.list});

  @override
  State<FieldFilterWidget> createState() => _FieldFilterWidgetState();
}

class _FieldFilterWidgetState extends State<FieldFilterWidget> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListView.builder(
      itemCount: widget.list.length,
      itemBuilder: (context, index) => Row(
        children: [
          Checkbox(
            value: widget.list[index].isChecked,
            checkColor: theme.colorScheme.primary,
            onChanged: (value) {
              setState(() {
                widget.list[index].isChecked = value!;
                FilterServices.changeTypeFilter(
                    index, widget.list[index], widget.list);
              });
            },
          ),
          const Gap(10),
          BodyLargeText(
            text: widget.list[index].filterName,
          ),
        ],
      ),
    );
  }
}
