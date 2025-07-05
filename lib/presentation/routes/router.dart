import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:my_project/presentation/routes/router.gr.dart';
import 'route_path.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {
  List<AutoRoute> get routes => [
    // ===============
    // Splash Screen
    // ===============
    AutoRoute(page: SplashRoute.page, path: RoutePath.splash, initial: true),
    // ===============
    // Onboarding Screen
    // ===============
    AutoRoute(page: OnboardingRoutes.page, path: RoutePath.onboarding),
    // ===============
    // Login Screen
    // ===============
    AutoRoute(page: LoginRoute.page, path: RoutePath.login),
    // ===============
    // Main Screen
    // ===============
    AutoRoute(
      page: MainRoute.page,
      path: RoutePath.main,
      children: [
        AutoRoute(
          page: RootHome.page,
          path: RoutePath.home,
          children: [
            AutoRoute(page: HomeRoute.page, path: ""),
            AutoRoute(page: ProductRoute.page, path: RoutePath.product),
          ],
        ),
        AutoRoute(
          page: RootWishlist.page,
          path: RoutePath.wishlists,
          children: [AutoRoute(page: WishlistRoute.page, path: "")],
        ),
        AutoRoute(
          page: RootCart.page,
          path: RoutePath.cart,
          children: [AutoRoute(page: CardRoute.page, path: "")],
        ),
        AutoRoute(
          page: RootProfile.page,
          path: RoutePath.profile,
          children: [AutoRoute(page: ProfileRoute.page, path: "")],
        ),
      ],
    ),
  ];
}
