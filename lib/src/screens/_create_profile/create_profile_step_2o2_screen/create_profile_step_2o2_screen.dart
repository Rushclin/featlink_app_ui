import 'dart:math' show min;
import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/components/gradiant_bottom_bar.dart';
import 'package:featlink_app/src/components/primary_button.dart';
import 'package:featlink_app/src/resources/app_assets.dart';
import 'package:featlink_app/src/screens/_create_profile/create_profile_step_2o2_screen/widgets/riche_text_section.dart';
import 'package:flutter/material.dart';

class CreateProfileStep2o2Screen extends StatelessWidget {
  const CreateProfileStep2o2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            // Ajouté pour s'assurer que le contenu est scrollable
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsetsDirectional.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 8,
                          ),
                          child: Text(
                            '2/3',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      child: Row(
                        children: [
                          SizedBox.square(
                            dimension: min(80, screenSize.width - 200),
                            child: Image.asset(
                              AppAssets.imageLogo2,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Flexible(
                            child: Text(
                              LocaleKeys.create_profile_step_2o2_screen_title
                                  .tr(),
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 3,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RicheTextSection(
                            sectionTitle: LocaleKeys
                                .create_profile_step_2o2_screen_title_loyalty_section
                                .tr(),
                            sectionContent: LocaleKeys
                                .create_profile_step_2o2_screen_content_loyalty_section
                                .tr(),
                          ),
                          RicheTextSection(
                            sectionTitle: LocaleKeys
                                .create_profile_step_2o2_screen_title_respect_section
                                .tr(),
                            sectionContent: LocaleKeys
                                .create_profile_step_2o2_screen_content_respect_section
                                .tr(),
                            coloredText: LocaleKeys
                                .create_profile_step_2o2_screen_community_rules
                                .tr(),
                          ),
                          RicheTextSection(
                            sectionTitle: LocaleKeys
                                .create_profile_step_2o2_screen_title_security_section
                                .tr(),
                            sectionContent: LocaleKeys
                                .create_profile_step_2o2_screen_content_security_section
                                .tr(),
                          ),
                          RicheTextSection(
                            sectionTitle: LocaleKeys
                                .create_profile_step_2o2_screen_title_advice_section
                                .tr(),
                            sectionContent: LocaleKeys
                                .create_profile_step_2o2_screen_content_advice_section
                                .tr(),
                          ),
                          RicheTextSection(
                            sectionTitle: LocaleKeys
                                .create_profile_step_2o2_screen_title_promotion_section
                                .tr(),
                            sectionContent: LocaleKeys
                                .create_profile_step_2o2_screen_content_promotion_section
                                .tr(),
                          ),
                          RicheTextSection(
                            sectionTitle: LocaleKeys
                                .create_profile_step_2o2_screen_title_nice_user_section
                                .tr(),
                            sectionContent: LocaleKeys
                                .create_profile_step_2o2_screen_content_nice_user_section
                                .tr(),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 10,
                            ),
                            child: Text(
                              LocaleKeys.create_profile_step_2o2_screen_caution
                                  .tr(),
                              style: const TextStyle(
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          PrimaryButton(
            text: LocaleKeys.common_next.tr(),
            onPressed: (_) {},
            fontSize: 24,
          ),
          const GradiantBottomBar(),
        ],
      ),
    );
  }
}
