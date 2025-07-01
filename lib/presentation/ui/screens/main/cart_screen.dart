import 'package:flutter/material.dart';
import 'package:my_project/presentation/ui/resource/app_colors.dart';
import 'package:my_project/presentation/ui/screens/main/widgets/w_cart_item.dart';
import 'package:my_project/presentation/ui/screens/main/widgets/w_cart_title.dart';
import 'package:my_project/presentation/ui/widgets/w_button.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        backgroundColor: AppColors.white,
        centerTitle: true,
        title: const Text(
          "Shopping Cart",
          style: TextStyle(
            color: AppColors.black,
            fontSize: 22,
            fontFamily: "MainFont",
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return WCartItem();
                },
              ),
              const SizedBox(height: 48),
              TextField(
                decoration: InputDecoration(
                  label: Text(
                    "Promocodes",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      fontFamily: "MainFont",
                    ),
                  ),
                  suffixIcon: GestureDetector(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "Apply",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          fontFamily: "MainFont",
                          color: AppColors.primary,
                        ),
                      ),
                    ),
                  ),
                  border: const OutlineInputBorder(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 48, bottom: 18),
                child: Text(
                  "Order Info",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontFamily: "MainFont",
                  ),
                ),
              ),
              const WCartTitle(title: "Subtotal", subtitle: "\$890.00"),
              const WCartTitle(title: "Shipping Charge", subtitle: "+ \$10.00"),
              const WCartTitle(
                title: "Total",
                subtitle: "\$900.00",
                colorSubTitle: AppColors.primary,
              ),
              const SizedBox(height: 48),
              WButton(onTap: () {}, title: "Checkout"),
            ],
          ),
        ),
      ),
    );
  }
}
