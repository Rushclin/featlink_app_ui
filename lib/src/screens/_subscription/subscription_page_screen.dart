import 'dart:async';
import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/components/app_navigation_bottom_sheet.dart';
import 'package:featlink_app/src/components/primary_button.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:featlink_app/src/resources/app_assets.dart';
import 'package:featlink_app/src/screens/_subscription/widgets/current_subscription_card.dart';
import 'package:featlink_app/src/screens/_subscription/widgets/subscription_14_days_card.dart';
import 'package:featlink_app/src/screens/_subscription/widgets/subscription_1_month_card.dart';
import 'package:featlink_app/src/screens/_subscription/widgets/subscription_24_hour_card.dart';
import 'package:featlink_app/src/screens/_subscription/widgets/subscription_3_month_card.dart';
import 'package:featlink_app/src/screens/_subscription/widgets/subscription_7_days_card.dart';
import 'package:flutter/material.dart';
import 'package:proste_bezier_curve/proste_bezier_curve.dart';

class SubscriptionPageScreen extends StatefulWidget {
  @override
  State<SubscriptionPageScreen> createState() => _SubscriptionPageScreenSate();
}

class _SubscriptionPageScreenSate extends State<SubscriptionPageScreen> {
  Timer? _timer;
  String _currentTime = '';

  @override
  void initState() {
    super.initState();
    _currentTime = _formatCurrentTime();
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (Timer t) => _getCurrentTime(),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _getCurrentTime() {
    final String formattedTime = _formatCurrentTime();
    setState(() {
      _currentTime = formattedTime;
    });
  }

  String _formatCurrentTime() {
    final DateTime now = DateTime.now();
    return "${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}";
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10, top: 10),
          child: Text(
            _currentTime,
            style: const TextStyle(
              fontSize: 14,
              color: Color(0xFF170E2B),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: const [
          Icon(Icons.signal_cellular_4_bar, color: Color(0xFF170E2B)),
          SizedBox(width: 8),
          Icon(Icons.wifi, color: Color(0xFF170E2B)),
          SizedBox(width: 8),
          RotatedBox(
            quarterTurns: 3,
            child: Icon(Icons.battery_full, color: Color(0xFF170E2B)),
          ),
          SizedBox(width: 16),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5, left: 30),
                    child: Row(
                      children: [
                        Center(
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              SizedBox(
                                width: 150,
                                height: 150,
                                child: CustomPaint(
                                  painter: DashedCirclePainter(
                                    numberOfStories: 4,
                                    spaceLength: 30,
                                  ),
                                ),
                              ),
                              const CircleAvatar(
                                radius: 65,
                                backgroundImage: AssetImage(
                                  AppAssets.subscriberProfileImage,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Text(
                          'Pierre,35',
                          style: TextStyle(fontSize: 28),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Center(
                          child: Icon(
                            Icons.verified,
                            color: AppColors.primary,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, top: 30),
                      child: Text(
                        LocaleKeys.subscription_page_screen_current_scription
                            .tr(),
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 20,
                    ),
                    child: CurrentSubscriptionCard(
                      packText: LocaleKeys.common_access.tr(),
                      packTextColor: const Color(0xFF909090),
                      durationLabel:
                          LocaleKeys.common_access_hour.tr(args: ['24']),
                      durationLabelColor: const Color(0xFF909090),
                      expiresAtText: '00J : 00H : 1oM : 00S',
                      coloredExpiresAtTextColor: const Color(0xFFF9BF0D),
                    ),
                  ),
                ],
              ),
            ),
            ClipPath(
              clipper: ProsteBezierCurve(
                position: ClipPosition.top,
                list: [
                  BezierCurveSection(
                    start: Offset(screenWidth, 0),
                    top: Offset(screenWidth / 2, 30),
                    end: const Offset(0, 0),
                  ),
                ],
              ),
              child: Container(
                color: const Color(0xFFB9B9B9),
                width: screenWidth,
                child: Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: ClipPath(
                    clipper: ProsteBezierCurve(
                      position: ClipPosition.top,
                      list: [
                        BezierCurveSection(
                          start: Offset(screenWidth, 0),
                          top: Offset(screenWidth / 2, 30),
                          end: const Offset(0, 0),
                        ),
                      ],
                    ),
                    child: Container(
                      decoration: const BoxDecoration(
                        //color: AppColors.primary.withOpacity(0.19),
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFFFFE0E0),
                            Color(0xFFFFF5F5),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, top: 30),
                                child: Text(
                                  LocaleKeys.subscription_page_screen_migrate_to
                                      .tr(),
                                  style: const TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                                right: 10,
                                top: 20,
                              ),
                              child: Subscription24HourCard(
                                durationLabel: LocaleKeys
                                    .common_access_duration_hour
                                    .tr(args: ['24']),
                                coloredDurationLabelText:
                                    LocaleKeys.common_access.tr(),
                                subscriptionPriceLabelText: '100 FCFA  31 BZC',
                                coloredSubscriptionPriceLabelText: '100 FCFA',
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                                right: 10,
                                top: 20,
                              ),
                              child: Subscription7DaysCard(
                                durationLabel: LocaleKeys
                                    .common_access_duration_days
                                    .tr(args: ['7']),
                                coloredDurationLabelText:
                                    LocaleKeys.common_access.tr(),
                                subscriptionPriceLabelText: '100 FCFA  31 BZC',
                                coloredSubscriptionPriceLabelText: '100 FCFA',
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                                right: 10,
                                top: 20,
                              ),
                              child: Subscription14DaysCard(
                                durationLabel: LocaleKeys
                                    .common_access_duration_days
                                    .tr(args: ['14']),
                                coloredDurationLabelText:
                                    LocaleKeys.common_access.tr(),
                                coloredDurationLabelColor:
                                    const Color(0xFF0D15D0),
                                subscriptionPriceLabelText: '100 FCFA  31 BZC',
                                coloredSubscriptionPriceLabelText: '100 FCFA',
                                coloredSubscriptionPriceLabelColor:
                                    const Color(0xFF0D15D0),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                                right: 10,
                                top: 20,
                              ),
                              child: Subscription1MonthCard(
                                packText: LocaleKeys.common_access.tr(),
                                durationLabel: LocaleKeys
                                    .common_access_duration_month
                                    .tr(args: ['1']),
                                subscriptionPriceLabelText:
                                    '1500 FCFA  460 BZC',
                                coloredSubscriptionPriceLabelText: '1500 FCFA',
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                                right: 10,
                                top: 20,
                              ),
                              child: Subscription3MonthCard(
                                packText: LocaleKeys.common_access.tr(),
                                packTextColor: const Color(0xFF8F481D),
                                durationLabel: LocaleKeys
                                    .common_access_duration_month
                                    .tr(args: ['3']),
                                durationLabelColor: const Color(0xFFBC6729),
                                subscriptionPriceLabelText:
                                    '4000 FCFA  1225 BZC',
                                coloredSubscriptionPriceLabelText: '4000 FCFA',
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 30,
                                right: 30,
                                top: 50,
                              ),
                              child: Text(
                                LocaleKeys
                                    .subscription_page_screen_beatzcoin_amount
                                    .tr(),
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 60,
                                right: 60,
                                top: 30,
                              ),
                              child: PrimaryButton(
                                text: '495 BZC',
                                fontSize: 14,
                                color: AppColors.primary,
                                fontWeight: FontWeight.bold,
                                backgroundColor: Colors.white,
                                onPressed: (_) {},
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 40),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  PrimaryButton(
                                    text: LocaleKeys
                                        .subscription_page_screen_buy_chips
                                        .tr(),
                                    fontSize: 8,
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: const Color(0xFF148A55),
                                    onPressed: (_) {},
                                  ),
                                  PrimaryButton(
                                    text: LocaleKeys
                                        .subscription_page_screen_cash_your_chips
                                        .tr(),
                                    fontSize: 8,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    onPressed: (_) {},
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 110,
            ),
          ],
        ),
      ),
      floatingActionButton: const AppNavigationBottomSheet(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class DashedCirclePainter extends CustomPainter {
  final int numberOfStories;
  final int spaceLength;
  double startOfArcInDegree = 0;
  DashedCirclePainter({required this.numberOfStories, this.spaceLength = 10});
  double inRads(double degree) {
    return (degree * pi) / 180;
  }

  @override
  void paint(Canvas canvas, Size size) {
    double arcLength =
        (360 - (numberOfStories * spaceLength)) / numberOfStories;
    if (arcLength <= 0) {
      arcLength = 360 / spaceLength - 1;
    }

    Rect rect = Rect.fromLTWH(0, 0, size.width, size.height);

    for (int i = 0; i < numberOfStories; i++) {
      canvas.drawArc(
        rect,
        inRads(startOfArcInDegree),
        inRads(arcLength),
        false,
        Paint()
          ..color = const Color(0xFFE9EBEE)
          ..strokeWidth = 5.0
          ..style = PaintingStyle.stroke,
      );
      startOfArcInDegree += arcLength + spaceLength;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
