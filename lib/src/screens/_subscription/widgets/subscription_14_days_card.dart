import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/components/second_button.dart';
import 'package:featlink_app/src/resources/app_assets.dart';
import 'package:flutter/material.dart';

class Subscription14DaysCard extends StatelessWidget {
  final String durationLabel;
  final String subscriptionPriceLabelText;
  final String? coloredDurationLabelText;
  final Color coloredDurationLabelColor;
  final String? coloredSubscriptionPriceLabelText;
  final Color coloredSubscriptionPriceLabelColor;

  const Subscription14DaysCard({
    required this.durationLabel,
    required this.subscriptionPriceLabelText,
    this.coloredDurationLabelText,
    this.coloredDurationLabelColor = Colors.white,
    this.coloredSubscriptionPriceLabelText,
    this.coloredSubscriptionPriceLabelColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        gradient: const LinearGradient(
          colors: [Color(0xFF8EA0FF), Color(0xFF0011AA)],
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SecondButton(
                  text: durationLabel,
                  coloredText: coloredDurationLabelText ?? '',
                  colorOfColoredText: coloredDurationLabelColor,
                  containerWidth: 150,
                  containerHeight: 40,
                  gradient: const LinearGradient(
                    colors: [Color(0xFFA5C9FF), Color(0xFF408CFF)],
                  ),
                  onPressed: (_) {},
                  fontSize: 12,
                ),
                const SizedBox(height: 10),
                SecondButton(
                  text: subscriptionPriceLabelText,
                  coloredText: coloredSubscriptionPriceLabelText ?? '',
                  colorOfColoredText: coloredSubscriptionPriceLabelColor,
                  containerWidth: 150,
                  containerHeight: 40,
                  gradient: const LinearGradient(
                    colors: [Color(0xFFA5C9FF), Color(0xFF408CFF)],
                  ),
                  onPressed: (_) {},
                  fontSize: 12,
                ),
              ],
            ),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width * 0.64,
            child: Image.asset(
              AppAssets.imageMedal4,
              fit: BoxFit.contain,
            ),
          ),
          Stack(
            children: [
              Positioned(
                top: 125,
                child: Row(
                  children: [
                    Container(
                      height: 10.0,
                      width: MediaQuery.of(context).size.width - 180,
                      color: Colors.white,
                    ),
                    Container(
                      height: 10.0,
                      width: MediaQuery.of(context).size.width - 180,
                      color: const Color(0xFF408CFF),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 112,
                left: MediaQuery.of(context).size.width - 195,
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: RadialGradient(
                      colors: [Colors.white, Colors.white60, Colors.white70],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 5,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
              child: SecondButton(
                text: LocaleKeys.common_active.tr(),
                containerWidth: 160,
                containerHeight: 60,
                gradient: const LinearGradient(
                  colors: [Color(0xFFA5C9FF), Color(0xFF408CFF)],
                ),
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
