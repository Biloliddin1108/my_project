import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_project/presentation/ui/resource/app_images.dart';
import '../../../resource/App_icons.dart';
import '../../../resource/app_colors.dart';

@RoutePage()
class AddNewCardScreen extends StatefulWidget {
  const AddNewCardScreen({super.key});

  @override
  State<AddNewCardScreen> createState() => _AddNewCardScreenState();
}

class _AddNewCardScreenState extends State<AddNewCardScreen> {
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
              Image.asset(AppImages.newCard),
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
                  hintText: "Enter Card Holder Name",
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
                  hintText: "Enter Card Number",
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
                          hintText: "00/00",
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
                          hintText: "000",
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
