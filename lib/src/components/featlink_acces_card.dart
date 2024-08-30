import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/components/second_button.dart';
import 'package:featlink_app/src/resources/app_assets.dart';
import 'package:flutter/material.dart';

class FeatlinkAccesCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 700,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        gradient: const LinearGradient(
          colors: [Color(0xFFD7D7D7), Color(0xFFF3F3F3), Color(0xFFB9B9B9)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 10,
            left: 20,
            child: Column(
              children: [
                SecondButton(
                  text: LocaleKeys
                      .swipezone_full_screen_modal_screen_hour_number
                      .tr(args: ['12']),
                  coloredText:
                      LocaleKeys.swipezone_full_screen_modal_screen_access.tr(),
                  onPressed: (_) {},
                  fontSize: 12,
                ),
                const SizedBox(height: 10),
                SecondButton(
                  text: '100 FCFA 31 BZC',
                  coloredText: '100 FCFA',
                  onPressed: (_) {},
                  fontSize: 12,
                ),
              ],
            ),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width * 0.4,
            child: Image.asset(
              AppAssets.imageMedal,
              fit: BoxFit.contain,
            ),
          ),
          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 25,
                right: 10,
                bottom: 5,
              ),
              child: SecondButton(
                text: LocaleKeys.swipezone_full_screen_modal_screen_active.tr(),
                onPressed: (_) {},
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
