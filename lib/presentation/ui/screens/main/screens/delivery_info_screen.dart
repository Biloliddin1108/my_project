import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_project/presentation/ui/screens/main/screens/add_address_screen.dart';
import 'package:my_project/presentation/ui/screens/main/screens/payment_method_screen.dart';
import 'package:my_project/presentation/ui/screens/main/screens/shipping_change_screen.dart';
import 'package:my_project/presentation/ui/screens/main/widgets/w_delivery_shipping_item.dart';
import 'package:my_project/presentation/ui/screens/main/widgets/w_delivery_shipping_info.dart';
import '../../../resource/App_icons.dart';
import '../../../resource/app_colors.dart';
import '../../../widgets/w_button.dart';

@RoutePage()
class DeliveryInfoScreen extends StatefulWidget {
  const DeliveryInfoScreen({super.key});

  @override
  State<DeliveryInfoScreen> createState() => _DeliveryInfoStateState();
}

class _DeliveryInfoStateState extends State<DeliveryInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        forceMaterialTransparency: true,
        backgroundColor: AppColors.white,
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
                "Delivery Information",
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
        padding: const EdgeInsets.only(top: 10, bottom: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            WButton(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PaymentMethodScreen(),
                  ),
                );
              },
              title: "Checkout",
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 16),
                            child: Text(
                              "Default Address :",
                              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                fontFamily: "MainFont",
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 16),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder:
                                        (context) => ShippingChangeScreen(),
                                  ),
                                );
                              },
                              child: Text(
                                "Change",
                                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  fontFamily: "MainFont",
                                  color: AppColors.primary,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      Row(
                        children: [
                          WDeliveryShippingInfo(
                            name: "Saul Goodmate",
                            address:
                                """16 E Birch Hill Road Fairbanks, NY, 99312 United States""",
                            phone: "865-5585 57587",
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => AddAddressScreen(),
                                  ),
                                );
                              },
                              behavior: HitTestBehavior.opaque,
                              child: Container(
                                height: 180,
                                decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.grey),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.add,
                                      color: AppColors.grey,
                                      size: 30,
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      "Add",
                                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "MainFont",
                                        color: AppColors.grey,
                                      ),
                                    ),
                                    Text(
                                      "Address",
                                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "MainFont",
                                        color: AppColors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const WDeliveryShippingItem(
                    title: 'Recent Save Addresses :',
                    name: "Anne Thurium",
                    address:
                        """35 State Route 05, aw, Grantsville 26143 United States""",
                  ),
                  const WDeliveryShippingItem(
                    title: 'All Delivery Address :',
                    name: "Anne Thurium",
                    address:
                        """35 State Route 05, aw, Grantsville 26143 United States""",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
