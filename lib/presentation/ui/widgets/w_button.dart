import 'package:flutter/material.dart';

import '../resource/app_colors.dart';

class WButton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  final Color color;
  final double radius;
  final EdgeInsetsGeometry padding;

  const WButton({
    super.key,
    required this.onTap,
    required this.title,
    this.color = AppColors.primary,
    this.radius = 0,
    this.padding = const EdgeInsets.symmetric(vertical: 16),
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: padding,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(radius),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: AppColors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
