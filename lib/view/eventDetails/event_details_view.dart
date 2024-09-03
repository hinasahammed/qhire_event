import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:qhire_event/model/event_model.dart';
import 'package:qhire_event/res/components/common/customText/body_large_text.dart';
import 'package:qhire_event/res/components/common/customText/title_large_text.dart';
import 'package:qhire_event/res/components/common/customText/title_medium_text.dart';
import 'package:qhire_event/res/components/common/custom_button.dart';

class EventDetailsView extends StatelessWidget {
  final EventModel eventItem;
  const EventDetailsView({super.key, required this.eventItem});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Event"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleLargeText(
                      text: eventItem.title,
                      fontWeight: FontWeight.bold,
                    ),
                    const Gap(5),
                    BodyLargeText(
                      text: eventItem.date,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
                const Spacer(),
                Icon(
                  Icons.bookmark_outline,
                  color: theme.colorScheme.primary,
                  size: 30,
                ),
              ],
            ),
            const Gap(20),
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: NetworkImage(
                    eventItem.imageUrl,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Gap(20),
            TitleMediumText(
              text: eventItem.desc,
              fontWeight: FontWeight.w600,
            ),
            const Gap(20),
            const TitleMediumText(
              text:
                  "Speakers: John Doe - CEO, TechCorp , Jane Smith - CTO, InnovateX",
              fontWeight: FontWeight.w600,
            ),
            const Gap(20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.location_on,
                  color: theme.colorScheme.primary,
                ),
                const Gap(10),
                Expanded(
                  child: TitleMediumText(
                    text: "Tech Hall, Silicon Valley , Map and Directions",
                    textColor: theme.colorScheme.onSurface.withOpacity(.6),
                  ),
                )
              ],
            ),
            const Gap(20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.access_time_filled_outlined,
                  color: theme.colorScheme.primary,
                ),
                const Gap(10),
                Expanded(
                  child: TitleMediumText(
                    text: "Time : 11 AM",
                    textColor: theme.colorScheme.onSurface.withOpacity(.6),
                  ),
                )
              ],
            ),
            const Spacer(),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: CustomButton(
                onPressed: () {},
                backgroundColor: theme.colorScheme.primary,
                foreground: theme.colorScheme.onPrimary,
                btnText: "Register",
              ),
            ),
            const Gap(30),
          ],
        ),
      ),
    );
  }
}
