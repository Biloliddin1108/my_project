import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_project/presentation/ui/resource/App_icons.dart';
import 'package:my_project/presentation/ui/resource/app_colors.dart';
import 'package:my_project/presentation/ui/resource/app_images.dart';
import 'package:my_project/presentation/ui/screens/main/widgets/w_account_items.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        centerTitle: true,
        title: const Text(
          "My Account",
          style: TextStyle(
            color: AppColors.black,
            fontSize: 22,
            fontFamily: "MainFont",
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Scaffold(
        backgroundColor: AppColors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              Image.asset(AppImages.person, width: 150),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 4),
                child: Text(
                  "Saul Goodmate",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: "MainFont",
                    color: AppColors.black,
                  ),
                ),
              ),
              Text(
                "saulgo35@gmail.com",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  fontFamily: "MainFont",
                  color: AppColors.grey,
                ),
              ),

              Column(
                children: [
                  WAccountItems(
                    title: "Notification",
                    child: Switch(value: false, onChanged: (_) {}),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: WAccountItems(
                      title: "My Orders",
                      child: SvgPicture.asset(AppIcons.next),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: WAccountItems(
                      title: "Payment Method",
                      child: SvgPicture.asset(AppIcons.next),
                    ),
                  ),
                  WAccountItems(
                    title: "Dark Mode",
                    child: Switch(value: false, onChanged: (_) {}),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: WAccountItems(
                      title: "Shipping Addresses",
                      child: SvgPicture.asset(AppIcons.next),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Logout",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: "MainFont",
                        color: AppColors.primary,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
