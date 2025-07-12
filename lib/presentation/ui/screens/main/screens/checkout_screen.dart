import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_project/presentation/ui/resource/app_images.dart';
import 'package:my_project/presentation/ui/widgets/w_button.dart';
import '../../../resource/App_icons.dart';
import '../../../resource/app_colors.dart';

@RoutePage()
class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
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
              Text(
                "Save",
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: AppColors.primary,
                  fontSize: 18,
                  fontFamily: "MainFont",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(top: 16, bottom: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [WButton(onTap: () {}, title: "Pay Now")],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Divider(),
              const SizedBox(height: 20),
              Image.asset(AppImages.card),
              Padding(
                padding: EdgeInsets.only(top: 24, bottom: 8),
                child: Text(
                  "Card Holder Name",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    fontFamily: "MainFont",
                  ),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Saul Goodmate",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColors.grey.withOpacity(0.5),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 24, bottom: 8),
                child: Text(
                  "Card Number",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    fontFamily: "MainFont",
                  ),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "0123   4567   8901   2345",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColors.grey.withOpacity(0.5),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 18),
                    child: Text(
                      "Expiry Date",
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        fontFamily: "MainFont",
                      ),
                    ),
                  ),
                  SizedBox(width: 60),
                  Padding(
                    padding: EdgeInsets.only(top: 18),
                    child: Text(
                      "CVV",
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        fontFamily: "MainFont",
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 18),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "09/28",
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColors.grey.withOpacity(0.5),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "235",
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColors.grey.withOpacity(0.5),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
