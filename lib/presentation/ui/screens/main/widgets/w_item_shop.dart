import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../resource/app_colors.dart';

class WItemShop extends StatelessWidget {
  final String title;
  final String icon;
  const WItemShop({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(right: 12),
          padding: EdgeInsets.all(24),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.white,
            border: Border.all(color: AppColors.grey.withValues(alpha: 0.5), width: 2),
          ),
          child: SvgPicture.asset(icon),
        ),
        SizedBox(height: 10),
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: AppColors.black,
          ),
        ),
      ],
    );
  }
}
