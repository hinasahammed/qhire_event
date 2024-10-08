import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:qhire_event/model/event_model.dart';
import 'package:qhire_event/res/components/common/customText/body_large_text.dart';
import 'package:qhire_event/res/components/common/customText/label_large_text.dart';
import 'package:qhire_event/view/eventDetails/event_details_view.dart';

class EventTabbarViewWidget extends StatelessWidget {
  final List<EventModel> list;
  const EventTabbarViewWidget({super.key, required this.list});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: list.length,
        shrinkWrap: true,
        separatorBuilder: (context, index) => const Gap(10),
        itemBuilder: (context, index) {
          final data = list[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EventDetailsView(
                    eventItem: data,
                  ),
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                  color: theme.colorScheme.onSurface.withOpacity(.2),
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: NetworkImage(
                          data.imageUrl,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const Gap(20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BodyLargeText(
                          text: data.title,
                          fontWeight: FontWeight.bold,
                        ),
                        const Gap(5),
                        LabelLargeText(
                          text: data.desc,
                          fontWeight: FontWeight.w500,
                        ),
                        const Gap(5),
                        BodyLargeText(
                          text: data.date,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
