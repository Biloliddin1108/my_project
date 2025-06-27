import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_project/presentation/ui/screens/onboarding/onboarding_screens.dart';
import 'package:my_project/presentation/ui/screens/splash/widgets/w_dot.dart';
import '../../resource/app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    _navigateToOnboarding();
    super.initState();
  }

  Future<void> _navigateToOnboarding() async {
    await Future.delayed(const Duration(seconds: 5));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const OnboardingScreens()),);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(),
            Column(
              children: [
                SvgPicture.asset('assets/images/logo.svg'),
                const SizedBox(height: 40.0),
                Text.rich(
                  TextSpan(
                    text: 'Swip',
                    style: TextStyle(
                      fontSize: 38.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFF13005),
                    ),
                    children: [
                      TextSpan(
                        text: 'wide',
                        style: TextStyle(fontSize: 38.0, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 60.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(5, (index) {
                  return  WDot(color: AppColors.primary.withOpacity(1-0.2*index),);
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
