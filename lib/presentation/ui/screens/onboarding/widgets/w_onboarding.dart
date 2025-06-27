import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../resource/app_colors.dart';
import '../../../resource/app_images.dart';

class WOnboarding extends StatelessWidget {
  final String title;
  final String description;
  final String image;
  const WOnboarding({super.key ,required this.title, required this.description, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          image,
        ),
        SizedBox(height: 100),
        Text(
          title,
          style: const TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: AppColors.black,
          ),
        ),
        SizedBox(height: 24),
        SizedBox(width: 340),
        Text(
          textAlign: TextAlign.center,
          description,
          style: TextStyle(fontSize: 16, color: AppColors.grey),
        ),
      ],
    );
  }
}
