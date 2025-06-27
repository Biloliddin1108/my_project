import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_project/presentation/ui/resource/app_colors.dart';
import 'package:my_project/presentation/ui/resource/app_images.dart';
import 'package:my_project/presentation/ui/screens/onboarding/widgets/w_onboarding.dart';
import 'package:my_project/presentation/ui/screens/splash/widgets/w_dot.dart';
import 'package:my_project/presentation/ui/screens/verification/login_screen.dart';

class OnboardingScreens extends StatefulWidget {
  const OnboardingScreens({super.key});

  @override
  State<OnboardingScreens> createState() => _OnboardingScreensState();
}

class _OnboardingScreensState extends State<OnboardingScreens> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                onTap: () {
                  if (_currentPage < 2) {
                    _pageController.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  } else {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  }
                },

                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 24,
                    bottom: 40,
                    right: 10,
                  ),
                  child: const Text(
                    'Next',
                    style: TextStyle(
                      color: AppColors.primary,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (indexPage) {
                  setState(() {
                    _currentPage = indexPage;
                  });
                },
                children: [
                  WOnboarding(
                    title: 'Discover New Products',
                    description: """Many new products are discovered by 
people simply happening upon them 
while being out and about in the 
world.""",
                    image: AppImages.onboarding1,
                  ),
                  WOnboarding(
                    title: 'Earn Points For Shopping',
                    description: """The purpose of reward points is to provide
an incentive for customers to make
repeat purchases.""",
                    image: AppImages.onboarding2,
                  ),
                  WOnboarding(
                    title: 'Get Fast Local Delivery',
                    description: """Wow Express offers cash on delivery
services and fast delivery services
so that your customers.""",
                    image: AppImages.onboarding3,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(3, (index) {
                  return WDot(
                    color:
                        _currentPage == index
                            ? AppColors.primary
                            : AppColors.primary.withOpacity(0.5),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
