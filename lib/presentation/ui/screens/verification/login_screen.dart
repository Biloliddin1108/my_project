import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_project/presentation/routes/router.gr.dart';
import 'package:my_project/presentation/ui/resource/app_icons.dart';
import 'package:my_project/presentation/ui/resource/app_colors.dart';
import 'package:my_project/presentation/ui/resource/app_images.dart';
import 'package:my_project/presentation/ui/widgets/w_button.dart';

@RoutePage()
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 20),
                Column(
                  children: [
                    SvgPicture.asset(AppImages.logo, width: 90),
                    Padding(
                      padding: const EdgeInsets.only(top: 28, bottom: 8),
                      child: Text(
                        "Welcome Back",
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppColors.black,
                          fontSize: 32,
                        ),
                      ),
                    ),
                    Text(
                      "Login to your account",
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: AppColors.grey, fontSize: 18),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Column(
                  children: [
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: "Email address",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      keyboardType: TextInputType.visiblePassword,
                      maxLines: 1,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 30),
                    Align(
                      alignment: Alignment.topRight,
                      child: GestureDetector(
                        onTap: () {
                          context.router.pushAll([const ForgetPasswordRoute()]);
                        },
                        child: Text(
                          "Forget Password ?",
                          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: AppColors.primary,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 40),
                    WButton(
                      onTap: () {
                        context.router.replaceAll([const MainRoute()]
                        );
                      },
                      title: "Login",
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 32),
                      child: Text(
                        "Or",
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: AppColors.grey,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 16,
                              horizontal: 32,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(color: AppColors.grey),
                            ),
                            child: Row(
                              children: [
                                Image.asset(AppIcons.google),
                                SizedBox(width: 10),
                                Text(
                                  "Google",
                                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 14,
                              horizontal: 22,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(color: AppColors.grey, width: 1),
                            ),
                            child: Row(
                              children: [
                                Image.asset(AppIcons.facebook),
                                SizedBox(width: 10),
                                Text(
                                  "Facebook",
                                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Text.rich(
                  TextSpan(
                    children: [
                      WidgetSpan(
                        alignment: PlaceholderAlignment.middle,
                        child: GestureDetector(
                          onTap: () {
                            context.router.pushAll([const SignUpRoute()]);
                          },
                          child: Text(
                            "Sign Up",
                            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: AppColors.primary,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                    text: "Don’t have an account?",
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: AppColors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
