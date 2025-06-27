import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../../../resource/app_colors.dart';

class WItemArrival extends StatelessWidget {
  final String url;
  final String product;
  final String price;
  final VoidCallback onTap;
  final int index;
  const WItemArrival({super.key, required this.url, required this.product, required this.price, required this.onTap, required this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 16),
            padding: EdgeInsets.all(20),
            color: AppColors.itemColor,
            child: Hero(
              tag: "arrival_$index",
              child: Image.network(
                height: 150,
                url,
              ),
            ),
          ),
          RatingBar.builder(
            initialRating: 3,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemSize: 20,
            itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
            itemBuilder:
                (context, _) => Icon(Icons.star, color: Colors.amber),
            onRatingUpdate: (rating) {
            },
          ),
          Padding(
            padding: const EdgeInsets.only(top: 6, bottom: 4),
            child: Text(
              product,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: AppColors.black,
              ),
            ),
          ),
          Text(
            price,
            style: TextStyle(
              fontFamily: "MainFont",
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: AppColors.primary,
            ),
          ),
        ],
      ),
    );
  }
}
