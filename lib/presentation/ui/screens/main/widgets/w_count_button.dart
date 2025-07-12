import 'package:flutter/material.dart';

import '../../../resource/app_colors.dart';

class WCountButton extends StatefulWidget {
  const WCountButton({super.key});

  @override
  State<WCountButton> createState() => _WCountButtonState();
}

class _WCountButtonState extends State<WCountButton> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        GestureDetector(
          onTap: () {
            if(count > 0) {
              setState(() {
                count--;
              });
            }
          },
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.itemColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(Icons.remove),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            "$count",
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              fontSize: 16,
              fontFamily: "MainFont",
              color: AppColors.black,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              count++;
            });
          },
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(
              Icons.add,
              color: AppColors.white,
            ),
          ),
        ),
      ],
    );
  }
}
