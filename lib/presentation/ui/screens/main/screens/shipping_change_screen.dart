import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_project/presentation/ui/widgets/w_button.dart';
import '../../../resource/App_icons.dart';
import '../../../resource/app_colors.dart';
import '../widgets/w_change_delivery.dart';

@RoutePage()
class ShippingChangeScreen extends StatefulWidget {
  const ShippingChangeScreen({super.key});

  @override
  State<ShippingChangeScreen> createState() => _ShippingChangeState();
}

class _ShippingChangeState extends State<ShippingChangeScreen> {
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
                "Delivery Address",
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
        padding: const EdgeInsets.only(top: 16, bottom: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [WButton(onTap: () {}, title: "Change Address")],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Divider(),
              Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                child: Text(
                  "Select  Delivery Address :",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontFamily: "MainFont",
                    color: AppColors.black,
                  ),
                ),
              ),
              Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        WChangeDelivery(
                          name: "Anne Thurium",
                          address:
                              """35 State Route 05, aw, Grantsville 26143 United States""",
                          phone: "865-5585 57587",
                        ),
                        WChangeDelivery(
                          name: "Anne Thurium",
                          address:
                              """35 State Route 05, aw, Grantsville 26143 United States""",
                          phone: "865-5585 57587",
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16, bottom: 16),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          WChangeDelivery(
                            name: "Anne Thurium",
                            address:
                                """35 State Route 05, aw, Grantsville 26143 United States""",
                            phone: "865-5585 57587",
                          ),
                          WChangeDelivery(
                            name: "Anne Thurium",
                            address:
                                """35 State Route 05, aw, Grantsville 26143 United States""",
                            phone: "865-5585 57587",
                          ),
                        ],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        WChangeDelivery(
                          name: "Anne Thurium",
                          address:
                              """35 State Route 05, aw, Grantsville 26143 United States""",
                          phone: "865-5585 57587",
                        ),
                        WChangeDelivery(
                          name: "Anne Thurium",
                          address:
                              """35 State Route 05, aw, Grantsville 26143 United States""",
                          phone: "865-5585 57587",
                        ),
                      ],
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
