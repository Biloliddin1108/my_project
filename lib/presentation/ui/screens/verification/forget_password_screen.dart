import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_project/presentation/ui/screens/verification/reset_password_screen.dart';
import '../../resource/app_colors.dart';
import '../../resource/app_images.dart';
import '../../widgets/w_button.dart';

@RoutePage()
class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
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
                      "Forget",
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColors.black,
                        fontSize: 32,
                      ),
                    ),
                  ),
                  Text(
                    "Forget your password",
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: AppColors.grey, fontSize: 18),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    """Please enter your email address below
you will receive a link to create a new 
password via email""",
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: AppColors.black,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(height: 60),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: "Email address",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),
              WButton(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResetPasswordScreen(),
                    ),
                  );
                },
                title: "Continue",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
