import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:qhire_event/gen/assets.gen.dart';

import 'package:qhire_event/res/components/common/customText/label_large_text.dart';
import 'package:qhire_event/view/certification/certification_view.dart';
import 'package:qhire_event/view/editProfile/edit_profile_view.dart';
import 'package:qhire_event/view/profile/widget/profile_card_item_widget.dart';
import 'package:qhire_event/view/qualification/qualification_view.dart';
import 'package:qhire_event/view/resume/resume_view.dart';
import 'package:qhire_event/view/skills/skills_view.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: Assets.images.background.provider(),
                  alignment: Alignment.topCenter,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  const Gap(130),
                  Center(
                    child: Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: theme.colorScheme.primary,
                          width: 8,
                        ),
                        image: const DecorationImage(
                          image: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsynwv-5qtogtOwJbIjaPFJUmHpzhxgqIAug&s",
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Gap(20),
                  Container(
                    width: size.width,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.surface,
                      border: Border(
                          top: BorderSide(
                        color: theme.colorScheme.onSurface.withOpacity(.3),
                      )),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Gap(50),
                        Text(
                          "Catherin",
                          style: theme.textTheme.headlineLarge!.copyWith(
                            color: theme.colorScheme.onSurface,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const LabelLargeText(
                          text: "UI/UX Designer",
                        ),
                        const LabelLargeText(
                          text: "catherin007@gmail.com",
                        ),
                        const Gap(30),
                        ProfileCardItemWidget(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const EditProfileView(),
                              ),
                            );
                          },
                          icon: Assets.icons.profileIcon.path,
                          title: "Profile",
                        ),
                        ProfileCardItemWidget(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const QualificationView(),
                              ),
                            );
                          },
                          icon: Assets.icons.qualificationIcon.path,
                          title: "Qualification",
                        ),
                        ProfileCardItemWidget(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const CertificationView(),
                              ),
                            );
                          },
                          icon: Assets.icons.certificationIcon.path,
                          title: "Certifications",
                        ),
                        ProfileCardItemWidget(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SkillsView(),
                              ),
                            );
                          },
                          icon: Assets.icons.skillsIcon.path,
                          title: "Skills",
                        ),
                        ProfileCardItemWidget(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ResumeView(),
                              ),
                            );
                          },
                          icon: Assets.icons.resumeIcon.path,
                          title: "Resume",
                        ),
                        ProfileCardItemWidget(
                          icon: Assets.icons.appliedJobsIcon.path,
                          title: "View Applied Jobs",
                        ),
                        ProfileCardItemWidget(
                          icon: Assets.icons.settingsIcon.path,
                          title: "Settings",
                        ),
                      ],
                    ),
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
