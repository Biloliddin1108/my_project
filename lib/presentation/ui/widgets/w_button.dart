import 'package:flutter/material.dart';

import '../resource/app_colors.dart';

class WButton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;

  const WButton({super.key, required this.onTap, required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 16),
        alignment: Alignment.center,
        decoration: BoxDecoration(color: AppColors.primary),
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
