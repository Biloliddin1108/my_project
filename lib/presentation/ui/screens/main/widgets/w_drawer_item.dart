import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../resource/app_colors.dart';

class WDrawerItem extends StatelessWidget {
  final String icon;
  final String title;

  const WDrawerItem({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30, left: 30, bottom: 8),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: Container(
          width: 45,
          height: 45,
          padding: EdgeInsets.all(12),
          decoration: const BoxDecoration(
            color: AppColors.primary,
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(icon),
        ),
        title: Text(
          title,
          style: TextStyle(
            fontFamily: "MainFont",
            color: AppColors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        onTap: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }
}
