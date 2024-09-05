import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/components/second_button.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:featlink_app/src/resources/app_assets.dart';
import 'package:flutter/material.dart';

class Subscription3MonthCard extends StatelessWidget {
  final String packText;
  final Color? packTextColor;
  final String durationLabel;
  final String subscriptionPriceLabelText;
  final Color? durationLabelColor;
  final String? coloredSubscriptionPriceLabelText;
  final Color? coloredSubscriptionPriceLabelColor;

  const Subscription3MonthCard({
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
            Color(0xFFFFC998),
            Color(0xFFFFA06A),
          ],
          stops: [0.3, 1],
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
                Row(
                  children: [
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
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Image.asset(
                        AppAssets.imageVip2,
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
            top: 70,
            left: 10,
            child: SecondButton(
              gradient: const LinearGradient(
                colors: [
                  AppColors.primary,
                  Color(0xFFFFCCCC),
                ],
                stops: [0.5, 1],
                begin: Alignment.center,
              ),
              text: subscriptionPriceLabelText,
              coloredText: coloredSubscriptionPriceLabelText,
              colorOfColoredText: const Color(0xFFBC6729),
              fontWeight: FontWeight.bold,
              containerWidth: 170,
              containerHeight: 40,
              onPressed: (_) {},
              fontSize: 14,
            ),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width * 0.64,
            top: 15,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Image.asset(
                AppAssets.imageMedal6,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 70,
            right: 70,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: SecondButton(
                gradient: const LinearGradient(
                  colors: [Color(0xFFFFCCCC), AppColors.primary],
                  end: Alignment.center,
                ),
                text: LocaleKeys.common_active.tr(),
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
