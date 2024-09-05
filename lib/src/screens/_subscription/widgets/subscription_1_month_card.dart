import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/components/second_button.dart';
import 'package:featlink_app/src/resources/app_assets.dart';
import 'package:flutter/material.dart';

class Subscription1MonthCard extends StatelessWidget {
  final String packText;
  final Color? packTextColor;
  final String durationLabel;
  final String subscriptionPriceLabelText;
  final Color? durationLabelColor;
  final String? coloredSubscriptionPriceLabelText;
  final Color? coloredSubscriptionPriceLabelColor;

  const Subscription1MonthCard({
    required this.durationLabel,
    required this.subscriptionPriceLabelText,
    required this.packText,
    this.durationLabelColor = const Color(0xFFFCE07B),
    this.coloredSubscriptionPriceLabelText,
    this.coloredSubscriptionPriceLabelColor = const Color(0xFFA07300),
    this.packTextColor = const Color(0xFFA6881C),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        gradient: const LinearGradient(
          colors: [
            Color(0xFF484848),
            Color(0xFF1E1E1E),
          ],
          stops: [1.0, 0.0],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 10,
            left: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0,
                  ),
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
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8.0,
                      ),
                      child: Text(
                        durationLabel,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: durationLabelColor,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8.0,
                      ),
                      child: Image.asset(
                        AppAssets.imageVip1,
                        width: 60,
                        height: 31,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width * 0.5,
            top: 30,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
              ),
              child: SecondButton(
                text: subscriptionPriceLabelText,
                coloredText: coloredSubscriptionPriceLabelText,
                colorOfColoredText:
                    coloredSubscriptionPriceLabelColor ?? Colors.black,
                containerWidth: 150,
                containerHeight: 40,
                gradient: const LinearGradient(
                  colors: [Color(0xFFF9CD4D), Color(0xFFFCDF7B)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                onPressed: (_) {},
                fontSize: 12,
              ),
            ),
          ),
          Stack(
            children: [
              Positioned(
                top: 120,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0,
                  ),
                  child: Container(
                    height: 15.0,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFFFFE69C),
                          Color(0xFFFACF52),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 80,
                left: MediaQuery.of(context).size.width * 0.64,
                child: Image.asset(
                  AppAssets.imageMedal5,
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 10,
            left: 70,
            right: 70,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: SecondButton(
                gradient: const LinearGradient(
                  colors: [Color(0xFFF9CD4D), Color(0xFFFCDF7B)],
                  stops: [1, 1],
                ),
                text: LocaleKeys.common_active.tr(),
                coloredText: LocaleKeys.common_active.tr(),
                colorOfColoredText: const Color(0xFFA07300),
                containerWidth: 50,
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
