import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_project/presentation/ui/screens/main/product_screen.dart';
import 'package:my_project/presentation/ui/screens/main/widgets/w_drawer_item.dart';
import 'package:my_project/presentation/ui/screens/main/widgets/w_item_arrival.dart';
import 'package:my_project/presentation/ui/screens/main/widgets/w_item_shop.dart';

import '../../resource/App_icons.dart';
import '../../resource/app_colors.dart';
import '../../resource/app_images.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  List<String> urls = [
    "https://static.vecteezy.com/system/resources/previews/046/829/689/non_2x/smart-watch-isolated-on-transparent-background-png.png",
    "https://images.puma.com/image/upload/f_auto,q_auto,b_rgb:fafafa,w_600,h_600/global/311887/01/sv04/fnd/IND/fmt/png/Softride-Premier-Men's-Slip-On-Shoes",
    "https://static.vecteezy.com/system/resources/thumbnails/047/249/331/small/sweater-shirt-hoodie-isolated-png.png",
    "https://purepng.com/public/uploads/large/purepng.com-the-north-face-hero-bagbagbackpacksthe-north-facehero-baglaptop-pocket-1421526272830qkxwn.png",
  ];

  List<String> products = ["Smart Watches", "Puma Shoes", "Hoodie", "Backpack"];

  List<String> prices = ["\$120.00", "\$250.00", "\$89.99", "\$75.00"];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: AppColors.white,
        appBar: AppBar(
          backgroundColor: AppColors.white,
          automaticallyImplyLeading: false,
          forceMaterialTransparency: true,
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Image.asset(AppImages.person, width: 40),
            ),
          ],
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  _scaffoldKey.currentState!.openDrawer();
                },
                child: SvgPicture.asset(AppIcons.menu),
              ),
              Text.rich(
                TextSpan(
                  text: 'Swip',
                  style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primary,
                  ),
                  children: [
                    TextSpan(
                      text: 'wide',
                      style: TextStyle(fontSize: 28.0, color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(90),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.grey.withOpacity(0.1),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search “Smartphone”",
                    hintStyle: const TextStyle(
                      color: AppColors.grey,
                      fontSize: 16,
                      fontFamily: "MainFont",
                    ),
                    prefixIcon: const Icon(
                      Icons.search,
                      size: 28,
                      color: AppColors.grey,
                    ),
                    suffixIcon: Container(
                      margin: EdgeInsets.all(5.0),
                      padding: EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.qr_code_scanner,
                        color: AppColors.white,
                      ),
                    ),
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 32, bottom: 20),
                  child: const Text(
                    "Shop By Category",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: AppColors.black,
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                  children: [
                    WItemShop(title: "Clothes", icon: AppIcons.clothes),
                    WItemShop(title: "Laptop", icon: AppIcons.laptop),
                    WItemShop(title: "Bag", icon: AppIcons.bag),
                    WItemShop(title: "Shoes", icon: AppIcons.shoes),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 44, bottom: 18),
                  child: const Text(
                    "Newest Arrival",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: AppColors.black,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    mainAxisExtent: 300,
                  ),
                  itemCount: urls.length,
                  itemBuilder: (context, index) {
                    return WItemArrival(
                      url: urls[index],
                      product: products[index],
                      price: prices[index],
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => ProductScreen(heroIndex: index),
                          ),
                        );
                      },
                      index: index,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        drawer: Drawer(
          backgroundColor: AppColors.white,
          child: ListView(
            children: [
              const SizedBox(height: 50),
              SvgPicture.asset(AppImages.logo, width: 100),
              SizedBox(height: 28),
              Align(
                alignment: Alignment.center,
                child: const Text.rich(
                  TextSpan(
                    text: 'Swip',
                    style: TextStyle(
                      fontFamily: "MainFont",
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFF13005),
                    ),
                    children: [
                      TextSpan(
                        text: 'wide',
                        style: TextStyle(
                          fontFamily: "MainFont",
                          fontSize: 28.0,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 30,
                  right: 30,
                  top: 40,
                  bottom: 40,
                ),
                child: const Divider(color: AppColors.grey),
              ),
              const WDrawerItem(icon: AppIcons.gift, title: "Rewards"),
              const WDrawerItem(icon: AppIcons.help, title: "Help"),
              const WDrawerItem(icon: AppIcons.action, title: "Contact Us"),
              const WDrawerItem(
                icon: AppIcons.privacy,
                title: "Privacy Policy",
              ),
              const WDrawerItem(icon: AppIcons.logout, title: "Logout"),
            ],
          ),
        ),
      ),
    );
  }
}
