import 'package:flutter/material.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:featlink_app/src/resources/app_assets.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';

class NavIcon {
  final String label;
  final dynamic icon;
  final String type;

  NavIcon({required this.label, required this.icon, this.type = 'icon'});
}

class AppNavigationBottomSheet extends StatefulWidget {
  const AppNavigationBottomSheet({super.key});

  @override
  State<AppNavigationBottomSheet> createState() =>
      _AppNavigationBottomSheetState();
}

class _AppNavigationBottomSheetState extends State<AppNavigationBottomSheet> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    final List<NavIcon> icons = [
      NavIcon(
        label: LocaleKeys.bottom_nav_home.tr(),
        icon: AppAssets.imageLogo2,
        type: 'image',
      ),
      NavIcon(
        label: LocaleKeys.bottom_nav_discovery.tr(),
        icon: Icons.search,
      ),
      NavIcon(label: LocaleKeys.bottom_nav_crush.tr(), icon: Icons.favorite),
      NavIcon(label: LocaleKeys.bottom_nav_messages.tr(), icon: Icons.chat),
      NavIcon(
        label: LocaleKeys.bottom_nav_dday.tr(),
        icon: Icons.person_search,
      ),
      NavIcon(
        label: LocaleKeys.bottom_nav_tips.tr(),
        icon: Icons.info,
      ),
      NavIcon(
        label: LocaleKeys.bottom_nav_saloonprived.tr(),
        icon: AppAssets.salonpriveIcon,
        type: 'image',
      ),
      NavIcon(
        label: LocaleKeys.bottom_nav_bantubeat.tr(),
        icon: AppAssets.bantubeatIcon,
        type: 'image',
      ),
      NavIcon(
        label: LocaleKeys.bottom_nav_jetons.tr(),
        icon: AppAssets.bzcIcon,
        type: 'image',
      ),
      NavIcon(
        label: LocaleKeys.bottom_nav_profile.tr(),
        icon: Icons.person,
      ),
      NavIcon(
        label: LocaleKeys.bottom_nav_mode.tr(),
        icon: Icons.dark_mode,
      ),
    ];

    Widget buildIcon(BuildContext context, dynamic item) {
      switch (item.type) {
        case 'image':
          return Image.asset(item.icon, width: 32, height: 32);
        default:
          return Icon(
            item.icon,
            color: Colors.grey,
            size: 32,
          );
      }
    }

    return Container(
      height: isExpanded ? 250 : 105,
      decoration: const BoxDecoration(color: Colors.transparent),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            child: Container(
              width: screenWidth,
              padding: const EdgeInsets.only(top: 20, bottom: 16),
              decoration: const BoxDecoration(color: AppColors.myWhite),
              child: Wrap(
                runSpacing: 16,
                children: List.generate(isExpanded ? icons.length : 5, (index) {
                  return SizedBox(
                    width: screenWidth / 5,
                    child: Column(
                      children: [
                        buildIcon(context, icons[index]),
                        Text(
                          icons[index].label,
                          style: const TextStyle(
                            fontSize: 12,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: isExpanded ? 218 : 70, // Adjust bottom value as needed
            child: Align(
              child: GestureDetector(
                onTap: () => {
                  setState(() {
                    isExpanded = !isExpanded;
                  }),
                },
                onVerticalDragStart: (DragStartDetails details) => {
                  setState(() {
                    isExpanded = !isExpanded;
                  }),
                },
                child: Container(
                  width: 32, // Adjust size as needed
                  height: 32, // Adjust size as needed
                  decoration: const BoxDecoration(
                    color: AppColors.myWhite,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    isExpanded
                        ? Icons.keyboard_arrow_down
                        : Icons.keyboard_arrow_up,
                    size: 32,
                    color: AppColors.myGray,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
