import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/components/second_button.dart';
import 'package:featlink_app/src/resources/app_assets.dart';
import 'package:flutter/material.dart';

class Subscription7DaysCard extends StatelessWidget {
  final String durationLabel;
  final String subscriptionPriceLabelText;
  final String? coloredDurationLabelText;
  final Color coloredDurationLabelColor;
  final String? coloredSubscriptionPriceLabelText;
  final Color coloredSubscriptionPriceLabelColor;

  const Subscription7DaysCard({
    required this.durationLabel,
    required this.subscriptionPriceLabelText,
    this.coloredDurationLabelText,
    this.coloredDurationLabelColor = const Color(0xFF896623),
    this.coloredSubscriptionPriceLabelText,
    this.coloredSubscriptionPriceLabelColor = const Color(0xFF896623),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        gradient: const LinearGradient(
          colors: [Color(0xFFDAC294), Color(0xFFF0DEBC), Color(0xFFBC9B5C)],
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
                  backgroundColor: const Color(0xFFCEAD6D),
                  gradient: null,
                  text: durationLabel,
                  coloredText: coloredDurationLabelText ?? '',
                  colorOfColoredText: coloredDurationLabelColor,
                  containerWidth: 150,
                  containerHeight: 40,
                  onPressed: (_) {},
                  fontSize: 12,
                ),
                const SizedBox(height: 10),
                SecondButton(
                  backgroundColor: const Color(0xFFCEAD6D),
                  gradient: null,
                  text: subscriptionPriceLabelText,
                  coloredText: coloredSubscriptionPriceLabelText ?? '',
                  colorOfColoredText: coloredSubscriptionPriceLabelColor,
                  containerWidth: 150,
									containerHeight: 40,
                  onPressed: (_) {},
                  fontSize: 12,
                ),
              ],
            ),
          ),
          Positioned(
            top: 20,
            left: MediaQuery.of(context).size.width * 0.64,
            child: Image.asset(
              AppAssets.imageMedal3,
              fit: BoxFit.contain,
            ),
          ),
          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
              child: SecondButton(
                backgroundColor: const Color(0xFFCEAD6D),
                gradient: const LinearGradient(
                  colors: [Color(0xFFE0BF7D), Color(0xFFBE9749)],
                ),
                text: LocaleKeys.common_active.tr(),
                containerWidth: 160,
                containerHeight: 60,
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
