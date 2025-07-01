import 'package:flutter/material.dart';

import '../../../resource/app_colors.dart';

class WCartTitle extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color? colorSubTitle;
  const WCartTitle({super.key, required this.title, required this.subtitle, this.colorSubTitle = AppColors.grey});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("$title :", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: AppColors.grey, fontFamily: "MainFont"),),
          Text(subtitle, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: colorSubTitle, fontFamily: "MainFont"),)
        ],
      ),
    );
  }
}
