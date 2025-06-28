import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_project/presentation/ui/resource/App_icons.dart';
import 'package:my_project/presentation/ui/resource/app_colors.dart';
import 'package:my_project/presentation/ui/screens/main/widgets/w_cart_item.dart';
import 'package:my_project/presentation/ui/screens/main/widgets/w_count_button.dart';
import 'package:my_project/presentation/ui/widgets/w_button.dart';
import 'package:my_project/presentation/ui/widgets/w_rating.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        backgroundColor: AppColors.white,
        centerTitle: true,
        title: const Text(
          "Shopping Cart",
          style: TextStyle(
            color: AppColors.black,
            fontSize: 22,
            fontFamily: "MainFont",
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return WCartItem();
          },
        ),
      ),
    );
  }
}
