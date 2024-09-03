import 'package:flutter/material.dart';
import '../config/app_colors.dart';

class DottedProgressCreateProfileBar extends StatelessWidget {
  final int progress;
  const DottedProgressCreateProfileBar({required this.progress, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          11,
          (i) => Container(
            height: 2,
            width: 30,
            decoration: BoxDecoration(
              color: i < progress ? AppColors.primary : null,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ).toList(),
      ),
    );
  }
}
