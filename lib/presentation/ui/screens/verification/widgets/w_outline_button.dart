import 'package:flutter/material.dart';

import '../../../resource/app_icons.dart';
import '../../../resource/app_colors.dart';

class WOutlineButton extends StatelessWidget {
  final String text;
  final String icon;
  const WOutlineButton({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 50,
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 36 ),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.grey,
          width: 1,
        ),
      ),
      child:  Row(
        children: [
          Image.asset(icon,fit: BoxFit.cover,scale: 1,),
          SizedBox(width: 10,),
          Text(text, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: AppColors.black),),

        ],
      ),
    );
  }
}
