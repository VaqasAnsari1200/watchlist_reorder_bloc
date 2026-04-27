import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final Color backgroundColor;
  final Color borderColor;
  final Color textColor;
  final double verticalPadding;
  final double horizontalPadding;
  final double borderRadius;
  final double fontSize;
  final FontWeight fontWeight;
  final bool enabled;
  final AlignmentGeometry? isCenter;

  const CustomButton({
    super.key,
    required this.title,
    required this.onTap,
    this.backgroundColor = const Color(0xff4A148C),
    this.borderColor = const Color(0xff4A148C),
    this.textColor = Colors.white,
    this.verticalPadding = 12,
    this.horizontalPadding = 12,
    this.borderRadius = 100,
    this.fontSize = 14,
    this.fontWeight = FontWeight.w500,
    this.enabled = true,
    this.isCenter = Alignment.center,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(borderRadius),
      child: Container(
        alignment: isCenter,
        padding: EdgeInsets.symmetric(vertical: verticalPadding,horizontal: horizontalPadding),
        decoration: BoxDecoration(
            color: enabled ? backgroundColor : backgroundColor.withValues(alpha: 0.5) ,
            borderRadius: BorderRadius.circular(borderRadius),
            border: Border.all(color: borderColor)
        ),
        child: Text(
          title,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith( color: textColor,
            fontSize: fontSize,
            fontWeight: fontWeight,),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
