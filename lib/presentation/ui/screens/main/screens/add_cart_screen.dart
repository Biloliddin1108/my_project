import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_project/presentation/ui/screens/main/screens/add_new_card_screen.dart';
import '../../../resource/App_icons.dart';
import '../../../resource/app_colors.dart';
import '../../../widgets/w_button.dart';

@RoutePage()
class AddCartScreen extends StatelessWidget {
  const AddCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        forceMaterialTransparency: true,
        
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: SvgPicture.asset(AppIcons.back),
              ),
              Text(
                "Payment Method",
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: AppColors.black,
                  fontSize: 22,
                  fontFamily: "MainFont",
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(
          top: 16,
          bottom: 32,
          left: 20,
          right: 20,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            WButton(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddNewCardScreen()),
                );
              },
              title: "+ Add Card",
              color: AppColors.yellow,
            ),
          ],
        ),
      ),
    );
  }
}
