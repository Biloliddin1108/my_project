import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../resource/app_colors.dart';
import '../../resource/app_images.dart';
import '../../widgets/w_button.dart';

@RoutePage()
class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  SvgPicture.asset(AppImages.logo, width: 90),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, bottom: 8),
                    child: Text(
                      "Reset",
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColors.black,
                        fontSize: 32,
                      ),
                    ),
                  ),
                  Text(
                    "Reset your password",
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: AppColors.grey, fontSize: 18,),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Enter Your New Password",
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppColors.black,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(height: 20),
                  TextField(
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "New password",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 20,),
                  TextField(
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Confirm password",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),
              WButton(onTap: () {}, title: "Change Password"),
            ],
          ),
        ),
      ),
    );
  }
}
