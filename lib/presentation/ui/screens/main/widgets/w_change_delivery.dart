import 'package:flutter/material.dart';

import '../../../resource/app_colors.dart';

class WChangeDelivery extends StatelessWidget {
  final String name;
  final String address;
  final String phone;
  const WChangeDelivery({super.key, required this.name, required this.address, required this.phone});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16),
      width: 196,
      height: 180,
      padding: EdgeInsets.only(left: 24, right: 16),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.grey),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                name,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: "MainFont",
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Text(
              address,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontFamily: "MainFont",
              ),
            ),
          ),
          Text(
            phone,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              fontFamily: "MainFont",
            ),
          ),
        ],
      ),
    );;
  }
}
