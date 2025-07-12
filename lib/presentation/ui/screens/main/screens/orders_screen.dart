import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../resource/App_icons.dart';
import '../../../resource/app_colors.dart';
import '../../../widgets/w_button.dart';
import '../widgets/w_cart_item.dart';

@RoutePage()
class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          forceMaterialTransparency: true,
          backgroundColor: AppColors.white,
          centerTitle: true,
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
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
                  "My Orders",
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
        body: Column(
          children: [
            const Divider(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 24),
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return WCartItem(
                      button: SizedBox(
                        width: 128,
                        child: WButton(padding: EdgeInsets.symmetric(vertical: 14), onTap: () {}, title: "Track Order"),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
