import 'package:flutter/material.dart';
import '../../../resource/app_colors.dart';

class WEditAddressItem extends StatelessWidget {
  final String title;
  final String hintText;

  const WEditAddressItem({super.key, required this.title, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20, top: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontFamily: "MainFont",
            ),
          ),
          SizedBox(height: 8),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: AppColors.grey.withOpacity(0.5),
                ),
              ),
              hintText: hintText,
              hintStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                fontFamily: "MainFont",
                color: AppColors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
