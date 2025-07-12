import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_project/presentation/routes/router.gr.dart';
import 'package:my_project/presentation/ui/resource/App_icons.dart';
import 'package:my_project/presentation/ui/resource/app_colors.dart';
import 'package:my_project/presentation/ui/screens/main/widgets/w_drawer_item.dart';
import '../../resource/app_images.dart';


final GlobalKey<ScaffoldState> scaffoldKeyMain = GlobalKey<ScaffoldState>();

@RoutePage()
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [RootHome(), RootWishlist(), RootCart(), RootProfile()],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context, watch: true);
        final currentIndex = tabsRouter.activeIndex;
        return Scaffold(
          key: scaffoldKeyMain,
          drawer: Drawer(
            backgroundColor: AppColors.white,
            child: ListView(
              children: [
                const SizedBox(height: 50),
                SvgPicture.asset(AppImages.logo, width: 100),
                SizedBox(height: 28),
                Align(
                  alignment: Alignment.center,
                  child: Text.rich(
                    TextSpan(
                      text: 'Swip',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontFamily: "MainFont",
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFF13005),
                      ),
                      children: [
                        TextSpan(
                          text: 'wide',
                          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
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

          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              hoverColor: Colors.transparent,
            ),

            child: Container(
              padding: EdgeInsets.symmetric(vertical: 18),
              decoration: BoxDecoration(
                color: AppColors.white,
                boxShadow: [
                  BoxShadow(
                    color: AppColors.grey.withOpacity(0.2),
                    spreadRadius: 3,
                    blurRadius: 7,
                  ),
                ],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: BottomNavigationBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                onTap: tabsRouter.setActiveIndex,
                items: [
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      currentIndex == 0 ? AppIcons.homeSelected : AppIcons.home,
                    ),
                    label: "",
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      currentIndex == 1
                          ? AppIcons.wishlistSelected
                          : AppIcons.wishlist,
                    ),
                    label: "",
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      currentIndex == 2 ? AppIcons.cartSelected : AppIcons.cart,
                    ),
                    label: "",
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      currentIndex == 3
                          ? AppIcons.accountSelected
                          : AppIcons.account,
                    ),
                    label: "",
                  ),
                ],
              ),
            ),
          ),
          body: child,
        );
      },
    );
  }
}
