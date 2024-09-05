import 'package:flutter/material.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'button.dart';

class SecondButton extends Button {
  final String text;
  final String? coloredText;
  final Color color;
  final Color colorOfColoredText;
  final FontWeight? fontWeight;
  final Gradient? gradient;
  final double? containerWidth;
  final double? containerHeight;

  const SecondButton({
    required this.text,
    required super.onPressed,
    this.coloredText,
    this.color = Colors.white,
    this.colorOfColoredText = const Color(0xFF62BAF3),
    this.fontWeight = FontWeight.normal,
    this.containerWidth = 100,
    this.containerHeight = 50,
    this.gradient = const LinearGradient(
      colors: [Colors.white, Color(0xFFA4A4A4)],
    ),
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
    final buttonContent = isLoading
        ? const CircularProgressIndicator(color: Colors.white)
        : _buildButtonContent();
    return Container(
      width: containerWidth,
      height: containerHeight,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        color: gradient == null ? backgroundColor : null,
        gradient: gradient,
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: fixedSize,
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius,
          ),
          padding: EdgeInsets.zero,
        ),
        onPressed: disabled ? null : () {},
        child: buttonContent,
      ),
    );
  }

  Widget _buildButtonContent() {
    if (coloredText != null && text.contains(coloredText!)) {
      final parts = text.split(coloredText!);
      return RichText(
        text: TextSpan(
          style: TextStyle(fontSize: fontSize, color: color),
          children: [
            TextSpan(text: parts[0]),
            TextSpan(
              text: coloredText,
              style: TextStyle(
                color: colorOfColoredText,
                fontWeight: fontWeight,
              ),
            ),
            if (parts.length > 1) TextSpan(text: parts[1]),
          ],
        ),
      );
    } else {
      return Text(
        text,
        style: TextStyle(fontSize: fontSize, color: color),
      );
    }
  }
}
