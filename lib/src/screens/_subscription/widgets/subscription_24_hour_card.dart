import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/components/second_button.dart';
import 'package:featlink_app/src/resources/app_assets.dart';
import 'package:flutter/material.dart';

class Subscription24HourCard extends StatelessWidget {
  final String durationLabel;
  final String subscriptionPriceLabelText;
  final String? coloredDurationLabelText;
  final Color coloredDurationLabelColor;
  final String? coloredSubscriptionPriceLabelText;
  final Color coloredSubscriptionPriceLabelColor;

  const Subscription24HourCard({
    required this.durationLabel,
    required this.subscriptionPriceLabelText,
    this.coloredDurationLabelText,
    this.coloredDurationLabelColor = const Color(0xFF62BAF3),
    this.coloredSubscriptionPriceLabelText,
    this.coloredSubscriptionPriceLabelColor = const Color(0xFF62BAF3),
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
            left: 20,
            child: Column(
              children: [
                SecondButton(
                  text: durationLabel,
                  coloredText: coloredDurationLabelText,
                  colorOfColoredText: coloredDurationLabelColor,
                  backgroundColor: const Color(0xFFD4D8DE),
                  gradient: null,
                  containerWidth: 150,
                  containerHeight: 40,
                  onPressed: (_) {},
                  fontSize: 12,
                ),
                const SizedBox(height: 10),
                SecondButton(
                  text: subscriptionPriceLabelText,
                  coloredText: coloredSubscriptionPriceLabelText,
                  colorOfColoredText: coloredSubscriptionPriceLabelColor,
                  backgroundColor: const Color(0xFFD4D8DE),
                  gradient: null,
                  containerWidth: 160,
                  containerHeight: 40,
                  onPressed: (_) {},
                  fontSize: 12,
                ),
              ],
            ),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width * 0.54,
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
                right: 25,
                bottom: 5,
              ),
              child: SecondButton(
                text: LocaleKeys.common_active.tr(),
                gradient: const LinearGradient(
                  colors: [Color(0xFFBDBEC1), Color(0xFFA4A4A4)],
                ),
                containerHeight: 60,
                containerWidth: 160,
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
