import 'package:flutter/material.dart';
import 'package:my_project/presentation/ui/resource/app_colors.dart';
import 'package:my_project/presentation/ui/screens/main/screens/product_screen.dart';
import 'package:my_project/presentation/ui/screens/main/widgets/w_heart.dart';
import 'package:my_project/presentation/ui/screens/main/widgets/w_item_arrival.dart';


class WishlistScreen extends StatefulWidget {
  const WishlistScreen({super.key});

  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
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
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        backgroundColor: AppColors.white,
        centerTitle: true,
        title: const Text(
          "Wishlist",
          style: TextStyle(
            color: AppColors.black,
            fontSize: 22,
            fontFamily: "MainFont",
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              mainAxisExtent: 300,
            ),
            itemCount: urls.length,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  WItemArrival(
                    url: urls[index],
                    product: products[index],
                    price: prices[index],
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductScreen(heroIndex: index),
                        ),
                      );
                    },
                    index: index,
                  ),
                  Positioned(
                    top: 12,
                    right: 12,
                    child:
                      WHeart(),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
