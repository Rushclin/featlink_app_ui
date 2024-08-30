import 'package:flutter/material.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'button.dart';

class SecondButton extends Button {
  final String text;
  final String? coloredText;
  final Color color;
  final Color colorOfColoredText;
  final FontWeight? fontWeight;

  const SecondButton({
    required this.text,
    required super.onPressed,
    this.coloredText,
    this.color = Colors.white,
    this.colorOfColoredText = const Color(0xFF62BAF3),
    this.fontWeight = FontWeight.normal,
    super.fontSize,
    super.isLoading,
    super.disabled,
    super.fixedSize,
    super.backgroundColor = AppColors.pale,
    super.borderWidth = 0,
    super.borderColor = AppColors.pale,
    super.borderRadius = const BorderRadius.all(Radius.circular(30)),
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        fixedSize: fixedSize,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius,
          side: BorderSide(color: borderColor, width: borderWidth),
        ),
      ),
      onPressed: () {},
      child: isLoading
          ? const CircularProgressIndicator(color: Colors.white)
          : _buildButtonContent(),
    );
  }

  Widget _buildButtonContent() {
    if (coloredText != null && text.contains(coloredText!)) {
      final parts = text.split(coloredText!);
      return RichText(
        text: TextSpan(
          style: TextStyle(fontSize: fontSize, color: Colors.white),
          children: [
            TextSpan(text: parts[0]),
            TextSpan(
              text: coloredText,
              style: TextStyle(
                color: colorOfColoredText,
                fontWeight: FontWeight.bold,
              ),
            ),
            if (parts.length > 1) TextSpan(text: parts[1]),
          ],
        ),
      );
    } else {
      return Text(
        text,
        style: TextStyle(fontSize: fontSize, color: Colors.white),
      );
    }
  }
}
