import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/components/gradiant_bottom_bar.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:flutter/material.dart';

import '../../components/dotted_progress_create_profile_bar.dart';

// THIS IS AN EXAMPLE SCREEN
// HERE IS TICKET LINK: https://trello.com/c/fwqU336S/10-10-la-page-de-bienvene
// HERE IS PR LINK: https://github.com/bantubeat/featlink_app_ui/pull/1
class CreateProfileStep110Screen extends StatelessWidget {
  const CreateProfileStep110Screen();

  @override
  Widget build(BuildContext context) {
    // All screen must wrapped in a Scaffold
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsetsDirectional.symmetric(horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Text(
                          LocaleKeys.create_profile_step_110_screen_title1.tr(),
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(
                              10,
                            ), // Adjust the border radius for more or less rounded corners
                            child: SizedBox(
                              width:
                                  60, // Adjust the width and height as needed
                              height: 60,
                              child: Image.network(
                                'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80', // Unsplash image URL
                                fit: BoxFit.cover,
                                errorBuilder: (
                                  BuildContext context,
                                  Object exception,
                                  StackTrace? stackTrace,
                                ) {
                                  return const Icon(Icons.error);
                                },
                                loadingBuilder: (
                                  BuildContext context,
                                  Widget child,
                                  ImageChunkEvent? loadingProgress,
                                ) {
                                  if (loadingProgress == null) {
                                    return child;
                                  }
                                  return Center(
                                    child: CircularProgressIndicator(
                                      value:
                                          loadingProgress.expectedTotalBytes !=
                                                  null
                                              ? loadingProgress
                                                      .cumulativeBytesLoaded /
                                                  loadingProgress
                                                      .expectedTotalBytes!
                                              : null,
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Pierre,${45}',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                'Couple',
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                'Bruxelles',
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                const Divider(),
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.symmetric(horizontal: 30),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Center(
                          child: Text(
                            LocaleKeys.create_profile_step_110_screen_title2
                                .tr(),
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          LocaleKeys
                              .create_profile_step_110_screen_description1v1
                              .tr(),
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          LocaleKeys
                              .create_profile_step_110_screen_description1v2
                              .tr(),
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Center(
                                child: Text(
                                  LocaleKeys
                                      .create_profile_step_110_screen_title3
                                      .tr(),
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: RichText(
                                  text: TextSpan(
                                    text: LocaleKeys
                                        .create_profile_step_110_screen_description2v1
                                        .tr(),
                                    style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                      color: AppColors.myTextDarkSoft,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: LocaleKeys
                                            .create_profile_step_110_screen_description2v2
                                            .tr(),
                                        style: const TextStyle(
                                          fontSize: 12,
                                          //fontWeight: FontWeight.w100,
                                          color: AppColors.primary,
                                        ),
                                      ),
                                      TextSpan(
                                        text: LocaleKeys
                                            .create_profile_step_110_screen_description2v3
                                            .tr(),
                                        style: const TextStyle(
                                          fontSize: 12,
                                          //fontWeight: FontWeight.w100,
                                        ),
                                      ),
                                      TextSpan(
                                        text: LocaleKeys
                                            .create_profile_step_110_screen_description2v4
                                            .tr(),
                                        style: const TextStyle(
                                          fontSize: 12,
                                          //fontWeight: FontWeight.w100,
                                          color: AppColors.primary,
                                        ),
                                      ),
                                      TextSpan(
                                        text: LocaleKeys
                                            .create_profile_step_110_screen_description2v5
                                            .tr(),
                                        style: const TextStyle(
                                          fontSize: 12,
                                          //fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      TextSpan(
                                        text: LocaleKeys
                                            .create_profile_step_110_screen_description2v6
                                            .tr(),
                                        style: const TextStyle(
                                          fontSize: 12,
                                          //fontWeight: FontWeight.w400,
                                          color: AppColors.primary,
                                        ),
                                      ),
                                      TextSpan(
                                        text: LocaleKeys
                                            .create_profile_step_110_screen_description2v7
                                            .tr(),
                                        style: const TextStyle(
                                          fontSize: 12,
                                          //fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                foregroundColor: AppColors.myWhite,
                fixedSize: const Size.fromHeight(45),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  /*side: borderWidth != 0
                    ? BorderSide(width: borderWidth, color: borderColor)
                    : BorderSide.none,*/
                ),
                elevation: 0,
                enableFeedback: true,
                overlayColor: AppColors.primaryLight,
                splashFactory: InkRipple.splashFactory,
              ),
              child: Text(
                LocaleKeys.create_profile_step_110_screen_confirm.tr(),
                style: const TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 24,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.myGray,
                foregroundColor: AppColors.myWhite,
                fixedSize: const Size.fromHeight(45),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  /*side: borderWidth != 0
                    ? BorderSide(width: borderWidth, color: borderColor)
                    : BorderSide.none,*/
                ),
                elevation: 0,
                enableFeedback: true,
                overlayColor: AppColors.primaryLight,
                splashFactory: InkRipple.splashFactory,
              ),
              child: Text(
                LocaleKeys.create_profile_step_110_screen_return.tr(),
                style: const TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 24,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          //const LinearProgressIndicator(color: AppColors.primary,backgroundColor: AppColors.myWhite,),
          const DottedProgressCreateProfileBar(progress: 9),
          const GradiantBottomBar(),
        ],
      ),
    );
  }
}
