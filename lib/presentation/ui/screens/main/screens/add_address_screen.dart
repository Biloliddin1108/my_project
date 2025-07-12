import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../resource/App_icons.dart';
import '../../../resource/app_colors.dart';
import '../../../widgets/w_button.dart';
import '../widgets/w_edit_address_item.dart';

@RoutePage()
class AddAddressScreen extends StatefulWidget {
  const AddAddressScreen({super.key});

  @override
  State<AddAddressScreen> createState() => _AddAddressScreenState();
}

class _AddAddressScreenState extends State<AddAddressScreen> {
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
                "Add Address",
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
          children: [WButton(onTap: () {}, title: "Save Address")],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Divider(),
              Padding(
                padding: const EdgeInsets.only(top: 12, bottom: 12),
                child: Text("Add New Address", style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 20, fontWeight: FontWeight.bold, fontFamily: "MainFont"),),
              ),
              Text("""Fill The Given Details And Create New
Shipping Address""", style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 16, fontWeight: FontWeight.w600, fontFamily: "MainFont", color: AppColors.grey),),
              SizedBox(height: 12,),
              WEditAddressItem(title: "Full Name", hintText: "Saul Goodmate"),
              WEditAddressItem(
                title: "Phone Number",
                hintText: "865-5585 57587",
              ),
              WEditAddressItem(
                title: "Address 01",
                hintText: "16 E Birch Hill Road",
              ),
              WEditAddressItem(
                title: "Address 02 (Optional)",
                hintText: "Near Fairbanks",
              ),
              WEditAddressItem(title: "City", hintText: "New York"),
              WEditAddressItem(title: "Country", hintText: "United States"),
              WEditAddressItem(title: "Postcode", hintText: "99312"),
              Text(
                "Add Delivery Instruction",
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: "MainFont",
                ),
              ),
              SizedBox(height: 8),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColors.grey.withOpacity(0.5),
                    ),
                  ),
                  hintText:
                  "Write Something Here",
                  hintStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    fontFamily: "MainFont",
                    color: AppColors.grey,
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 60,
                    horizontal: 10,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
