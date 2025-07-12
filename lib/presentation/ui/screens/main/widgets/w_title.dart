import 'package:flutter/material.dart';

import '../../../resource/app_colors.dart';

class WTitle extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color? color;
  const WTitle({super.key, required this.title, required this.subtitle, this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("$title :", style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 18, fontWeight: FontWeight.bold, color: AppColors.black),),
          Text(subtitle, style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 18, fontWeight: FontWeight.bold, color: AppColors.grey),)
        ],
      ),
    );
  }
}
