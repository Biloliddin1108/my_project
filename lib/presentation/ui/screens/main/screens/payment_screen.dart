import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_project/presentation/ui/resource/app_images.dart';
import 'package:my_project/presentation/ui/screens/main/screens/add_cart_screen.dart';
import 'package:my_project/presentation/ui/widgets/w_button.dart';
import '../../../resource/App_icons.dart';
import '../../../resource/app_colors.dart';

@RoutePage()
class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
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
              Row(
                children: [
                  Expanded(
                    child: WButton(
                      onTap: () {
                        showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (context) {
                            return Dialog(
                              backgroundColor: Colors.transparent,
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  vertical: 30,
                                  horizontal: 16,
                                ),
                                decoration: BoxDecoration(
                                  color: AppColors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SvgPicture.asset(AppIcons.attation),
                                    const SizedBox(height: 30),
                                    Text(
                                      "Delete this Card?",
                                      textAlign: TextAlign.center,
                                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.black,
                                        fontFamily: "MainFont",
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      "Do you want to delete this card?",
                                      textAlign: TextAlign.center,

                                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                        color: AppColors.grey,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: "MainFont",
                                      ),
                                    ),
                                    const SizedBox(height: 36),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: WButton(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder:
                                                      (context) =>
                                                          AddCartScreen(),
                                                ),
                                              );
                                            },
                                            radius: 70,
                                            title: "Yes",
                                          ),
                                        ),
                                        SizedBox(width: 20),
                                        Expanded(
                                          child: WButton(
                                            onTap: () {
                                              Navigator.pop(context);
                                            },
                                            radius: 70,
                                            color: AppColors.yellow,
                                            title: "No",
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                      title: "Delete Card",
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: WButton(
                      onTap: () {},
                      title: "+ Add Card",
                      color: AppColors.yellow,
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
