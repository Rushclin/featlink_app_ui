import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/components/second_button.dart';
import 'package:featlink_app/src/resources/app_assets.dart';
import 'package:flutter/material.dart';

class CurrentSubscriptionCard extends StatelessWidget {
  final String packText;
  final Color? packTextColor;
  final String durationLabel;
  final String expiresAtText;
  final Color? durationLabelColor;
  final Color? coloredExpiresAtTextColor;

  const CurrentSubscriptionCard({
    required this.durationLabel,
    required this.packText,
    required this.expiresAtText,
    this.durationLabelColor = const Color(0xFFFCE07B),
    this.packTextColor = const Color(0xFFA6881C),
    this.coloredExpiresAtTextColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
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
            left: 30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    packText,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: packTextColor,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    durationLabel,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: durationLabelColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width * 0.64,
            top: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Image.asset(
                AppAssets.imageMedal7,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 30,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    LocaleKeys.common_expiresAt.tr(),
                    style: const TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 350,
                  ),
                  SecondButton(
                    gradient: const LinearGradient(
                      colors: [Color(0xFFBDBEC1), Color(0xFFA4A4A4)],
                    ),
                    text: expiresAtText,
                    coloredText: expiresAtText,
                    colorOfColoredText: coloredExpiresAtTextColor!,
                    containerHeight: 40,
                    containerWidth: 160,
                    onPressed: (_) {},
                    fontSize: 14,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
