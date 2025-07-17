import 'package:flutter/material.dart';
import 'package:my_project/presentation/ui/screens/main/screens/add_address_screen.dart';
import '../../../resource/app_colors.dart';

class WDeliveryShippingInfo extends StatelessWidget {
  final String name;
  final String address;
  final String phone;
  const WDeliveryShippingInfo({super.key,  this.name = "",  this.address = "", this.phone = ""});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16),
      width: 220,
      height: 180,
      padding: EdgeInsets.only(left: 24, right: 16),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.grey),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                name,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: "MainFont",
                ),
              ),
              GestureDetector(
                child: const Icon(
                  Icons.edit,
                  color: AppColors.green,
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AddAddressScreen(),),);
                },
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Text(
              address,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontFamily: "MainFont",
              ),
            ),
          ),
          Text(
            phone,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              fontFamily: "MainFont",
            ),
          ),
        ],
      ),
    );
  }
}
