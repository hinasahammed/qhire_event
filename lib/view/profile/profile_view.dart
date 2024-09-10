import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:qhire_event/assets/icons/icon_asset.dart';
import 'package:qhire_event/assets/images/image_asset.dart';
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
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(ImageAsset.background),
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
                            "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
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
                          icon: IconAsset.profileIcon,
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
                          icon: IconAsset.qualificationIcon,
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
                          icon: IconAsset.certificationIcon,
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
                          icon: IconAsset.skillsIcon,
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
                          icon: IconAsset.resumeIcon,
                          title: "Resume",
                        ),
                        const ProfileCardItemWidget(
                          icon: IconAsset.appliedJobIcon,
                          title: "View Applied Jobs",
                        ),
                        const ProfileCardItemWidget(
                          icon: IconAsset.settingsIcon,
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
