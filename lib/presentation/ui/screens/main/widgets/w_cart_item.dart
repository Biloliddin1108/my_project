import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_project/presentation/ui/screens/main/widgets/w_count_button.dart';
import '../../../resource/App_icons.dart';
import '../../../resource/app_colors.dart';
import '../../../widgets/w_button.dart';
import '../../../widgets/w_rating.dart';

class WCartItem extends StatelessWidget {
  const WCartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 16),
                padding: EdgeInsets.all(20),
                color: AppColors.itemColor,
                child: Image.network(
                  height: 150,
                  width: 128,
                  "https://static.vecteezy.com/system/resources/previews/046/829/689/non_2x/smart-watch-isolated-on-transparent-background-png.png",
                ),
              ),
              Positioned(
                top: 16,
                right: 16,
                child: GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (context) {
                        return Dialog(
                          backgroundColor: Colors.transparent,
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 16),
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SvgPicture.asset(AppIcons.attation),
                                const SizedBox(height: 30),
                                Text(
                                  "Delete this product?",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.black,
                                    fontFamily: "MainFont",
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  "Do you want to delete this product?",
                                  textAlign: TextAlign.center,

                                  style: TextStyle(
                                    color: AppColors.grey,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "MainFont",
                                  ),
                                ),
                                const SizedBox(height: 36),
                                Row(
                                  children: [
                                    Expanded(
                                      child: WButton(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        radius: 70,
                                        title: "Yes",
                                      ),
                                    ),
                                    SizedBox(width: 20),
                                    Expanded(
                                      child: WButton(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        radius: 70,
                                        color: AppColors.yellow,
                                        title: "No",
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: SvgPicture.asset(AppIcons.delete),
                ),
              ),
            ],
          ),
          SizedBox(width: 24),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const WRating(padding: EdgeInsets.zero),
              const Padding(
                padding:  EdgeInsets.only(top: 6, bottom: 4),
                child: Text(
                  "Smart Watch",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: AppColors.black,
                  ),
                ),
              ),
              const Text(
                "\$120.00",
                style: TextStyle(
                  fontFamily: "MainFont",
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: AppColors.primary,
                ),
              ),
              SizedBox(height: 24),
              WCountButton(),
            ],
          ),
        ],
      ),
    );
  }
}
