import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../resource/App_icons.dart';

class WHeart extends StatefulWidget {
  const WHeart({super.key});

  @override
  State<WHeart> createState() => _WHeartState();
}

class _WHeartState extends State<WHeart> {
  bool isPressed = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isPressed = !isPressed;
        });
      },
      child: SvgPicture.asset(isPressed ? AppIcons.heart : AppIcons.like),
    );
  }
}
