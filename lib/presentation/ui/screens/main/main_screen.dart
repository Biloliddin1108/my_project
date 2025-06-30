import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_project/presentation/ui/resource/App_icons.dart';
import 'package:my_project/presentation/ui/resource/app_colors.dart';
import 'package:my_project/presentation/ui/screens/main/cart_screen.dart';
import 'package:my_project/presentation/ui/screens/main/home_screen.dart';
import 'package:my_project/presentation/ui/screens/main/profile_screen.dart';
import 'package:my_project/presentation/ui/screens/main/wishlist_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  int _selectedIndex = 0;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();

    _tabController.addListener(() {
      setState(() {
        _selectedIndex = _tabController.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          backgroundColor: AppColors.white,

          body: TabBarView(
            controller: _tabController,
            children:  [
              HomeScreen(),
              WishlistScreen(),
              CardScreen(),
              ProfileScreen(),
            ],
          ),
          bottomNavigationBar: Container(
            padding: EdgeInsets.symmetric(vertical: 18),
            decoration: BoxDecoration(
              color: AppColors.white,
              boxShadow: [
                BoxShadow(
                  color: AppColors.grey.withValues(alpha: 0.2),
                  spreadRadius: 3,
                  blurRadius: 7,
                ),
              ],
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: TabBar(
              labelPadding: EdgeInsets.zero,
              dividerColor: Colors.transparent,
              indicatorColor: Colors.transparent,
              controller: _tabController,
              onTap: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              tabs: [
                Tab(child: SvgPicture.asset(_selectedIndex == 0 ? AppIcons.homeSelected: AppIcons.home)),
                Tab(child: SvgPicture.asset(_selectedIndex == 1 ? AppIcons.wishlistSelected: AppIcons.wishlist)),
                Tab(child: SvgPicture.asset(_selectedIndex == 2 ? AppIcons.cartSelected: AppIcons.cart)),
                Tab(child: SvgPicture.asset(_selectedIndex == 3 ? AppIcons.accountSelected: AppIcons.account)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

