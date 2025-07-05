import 'package:flutter/material.dart';
import 'package:my_project/presentation/ui/screens/main/widgets/w_delivery_shipping_info.dart';

class WDeliveryItem extends StatelessWidget {
  final String title;
  final String address;
  final String name;
  final String phone;

  const WDeliveryItem({super.key, required this.title,  this.address = "",  this.name = "",  this.phone = ""});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 16, bottom: 18),
          child: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              fontFamily: "MainFont",
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              3,
                  (index) =>  WDeliveryShippingInfo(address: address, name:name  , phone: phone,),
            ),
          ),
        ),
      ],
    );
  }
}
