import 'package:featlink_app/src/config/app_colors.dart';
import 'package:flutter/material.dart';

class CreateProfileDialog extends StatelessWidget {
  final String title1;
  final String title2;
  final String? subTitle;
  final String? description1;
  final String? description2;
  final String buttonText;
  final void Function(BuildContext) buttonAction;

  const CreateProfileDialog({
    required this.title1,
    required this.title2,
    required this.buttonText,
    required this.buttonAction,
    this.subTitle,
    this.description1,
    this.description2,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FittedBox(
            child: Text(
              title1.toUpperCase(),
              style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w900,
                fontFamily: 'inter',
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          FittedBox(
            child: Text(
              title2,
              style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w900,
                fontFamily: 'inter',
              ),
            ),
          ),
          Visibility(
            visible: description1 != null,
            child: FittedBox(
              child: Text(
                '$description1',
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'inter',
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          FittedBox(
            child: Text(
              '$description2',
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontFamily: 'inter',
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
      actions: [
        ElevatedButton(
          onPressed: () => buttonAction,
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primary,
            fixedSize: const Size.fromHeight(45),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            elevation: 20,
            enableFeedback: true,
            overlayColor: AppColors.primaryLight,
            splashFactory: InkRipple.splashFactory,
          ),
          child: Center(
            child: Text(
              buttonText.toUpperCase(),
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w900,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
      actionsPadding: const EdgeInsets.only(bottom: 5),
      actionsAlignment: MainAxisAlignment.center,
    );
  }
}
