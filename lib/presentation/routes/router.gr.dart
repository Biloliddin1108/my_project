// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i20;
import 'package:flutter/material.dart' as _i21;
import 'package:my_project/presentation/root/root_cart.dart' as _i12;
import 'package:my_project/presentation/root/root_home.dart' as _i13;
import 'package:my_project/presentation/root/root_profile.dart' as _i14;
import 'package:my_project/presentation/root/root_wishlist.dart' as _i15;
import 'package:my_project/presentation/ui/screens/main/cart_screen.dart'
    as _i1;
import 'package:my_project/presentation/ui/screens/main/home_screen.dart'
    as _i3;
import 'package:my_project/presentation/ui/screens/main/main_screen.dart'
    as _i5;
import 'package:my_project/presentation/ui/screens/main/profile_screen.dart'
    as _i10;
import 'package:my_project/presentation/ui/screens/main/screens/orders_screen.dart'
    as _i7;
import 'package:my_project/presentation/ui/screens/main/screens/payment_screen.dart'
    as _i8;
import 'package:my_project/presentation/ui/screens/main/screens/product_screen.dart'
    as _i9;
import 'package:my_project/presentation/ui/screens/main/screens/shipping_adresses_screen.dart'
    as _i16;
import 'package:my_project/presentation/ui/screens/main/wishlist_screen.dart'
    as _i19;
import 'package:my_project/presentation/ui/screens/onboarding/onboarding_screens.dart'
    as _i6;
import 'package:my_project/presentation/ui/screens/splash/splash_screen.dart'
    as _i18;
import 'package:my_project/presentation/ui/screens/verification/forget_password_screen.dart'
    as _i2;
import 'package:my_project/presentation/ui/screens/verification/login_screen.dart'
    as _i4;
import 'package:my_project/presentation/ui/screens/verification/reset_password_screen.dart'
    as _i11;
import 'package:my_project/presentation/ui/screens/verification/sign_up_screen.dart'
    as _i17;

abstract class $AppRouter extends _i20.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i20.PageFactory> pagesMap = {
    CardRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.CardScreen(),
      );
    },
    ForgetPasswordRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.ForgetPasswordScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomeScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.LoginScreen(),
      );
    },
    MainRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.MainScreen(),
      );
    },
    OnboardingRoutes.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.OnboardingScreens(),
      );
    },
    OrdersRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.OrdersScreen(),
      );
    },
    PaymentRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.PaymentScreen(),
      );
    },
    ProductRoute.name: (routeData) {
      final args = routeData.argsAs<ProductRouteArgs>();
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.ProductScreen(
          key: args.key,
          heroIndex: args.heroIndex,
        ),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.ProfileScreen(),
      );
    },
    ResetPasswordRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.ResetPasswordScreen(),
      );
    },
    RootCart.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.RootCart(),
      );
    },
    RootHome.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.RootHome(),
      );
    },
    RootProfile.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.RootProfile(),
      );
    },
    RootWishlist.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.RootWishlist(),
      );
    },
    ShippingAdressesRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.ShippingAdressesScreen(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i17.SignUpScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i18.SplashScreen(),
      );
    },
    WishlistRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i19.WishlistScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.CardScreen]
class CardRoute extends _i20.PageRouteInfo<void> {
  const CardRoute({List<_i20.PageRouteInfo>? children})
      : super(
          CardRoute.name,
          initialChildren: children,
        );

  static const String name = 'CardRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ForgetPasswordScreen]
class ForgetPasswordRoute extends _i20.PageRouteInfo<void> {
  const ForgetPasswordRoute({List<_i20.PageRouteInfo>? children})
      : super(
          ForgetPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgetPasswordRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i3.HomeScreen]
class HomeRoute extends _i20.PageRouteInfo<void> {
  const HomeRoute({List<_i20.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i4.LoginScreen]
class LoginRoute extends _i20.PageRouteInfo<void> {
  const LoginRoute({List<_i20.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i5.MainScreen]
class MainRoute extends _i20.PageRouteInfo<void> {
  const MainRoute({List<_i20.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i6.OnboardingScreens]
class OnboardingRoutes extends _i20.PageRouteInfo<void> {
  const OnboardingRoutes({List<_i20.PageRouteInfo>? children})
      : super(
          OnboardingRoutes.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoutes';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i7.OrdersScreen]
class OrdersRoute extends _i20.PageRouteInfo<void> {
  const OrdersRoute({List<_i20.PageRouteInfo>? children})
      : super(
          OrdersRoute.name,
          initialChildren: children,
        );

  static const String name = 'OrdersRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i8.PaymentScreen]
class PaymentRoute extends _i20.PageRouteInfo<void> {
  const PaymentRoute({List<_i20.PageRouteInfo>? children})
      : super(
          PaymentRoute.name,
          initialChildren: children,
        );

  static const String name = 'PaymentRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i9.ProductScreen]
class ProductRoute extends _i20.PageRouteInfo<ProductRouteArgs> {
  ProductRoute({
    _i21.Key? key,
    required int heroIndex,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          ProductRoute.name,
          args: ProductRouteArgs(
            key: key,
            heroIndex: heroIndex,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductRoute';

  static const _i20.PageInfo<ProductRouteArgs> page =
      _i20.PageInfo<ProductRouteArgs>(name);
}

class ProductRouteArgs {
  const ProductRouteArgs({
    this.key,
    required this.heroIndex,
  });

  final _i21.Key? key;

  final int heroIndex;

  @override
  String toString() {
    return 'ProductRouteArgs{key: $key, heroIndex: $heroIndex}';
  }
}

/// generated route for
/// [_i10.ProfileScreen]
class ProfileRoute extends _i20.PageRouteInfo<void> {
  const ProfileRoute({List<_i20.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i11.ResetPasswordScreen]
class ResetPasswordRoute extends _i20.PageRouteInfo<void> {
  const ResetPasswordRoute({List<_i20.PageRouteInfo>? children})
      : super(
          ResetPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ResetPasswordRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i12.RootCart]
class RootCart extends _i20.PageRouteInfo<void> {
  const RootCart({List<_i20.PageRouteInfo>? children})
      : super(
          RootCart.name,
          initialChildren: children,
        );

  static const String name = 'RootCart';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i13.RootHome]
class RootHome extends _i20.PageRouteInfo<void> {
  const RootHome({List<_i20.PageRouteInfo>? children})
      : super(
          RootHome.name,
          initialChildren: children,
        );

  static const String name = 'RootHome';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i14.RootProfile]
class RootProfile extends _i20.PageRouteInfo<void> {
  const RootProfile({List<_i20.PageRouteInfo>? children})
      : super(
          RootProfile.name,
          initialChildren: children,
        );

  static const String name = 'RootProfile';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i15.RootWishlist]
class RootWishlist extends _i20.PageRouteInfo<void> {
  const RootWishlist({List<_i20.PageRouteInfo>? children})
      : super(
          RootWishlist.name,
          initialChildren: children,
        );

  static const String name = 'RootWishlist';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i16.ShippingAdressesScreen]
class ShippingAdressesRoute extends _i20.PageRouteInfo<void> {
  const ShippingAdressesRoute({List<_i20.PageRouteInfo>? children})
      : super(
          ShippingAdressesRoute.name,
          initialChildren: children,
        );

  static const String name = 'ShippingAdressesRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i17.SignUpScreen]
class SignUpRoute extends _i20.PageRouteInfo<void> {
  const SignUpRoute({List<_i20.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i18.SplashScreen]
class SplashRoute extends _i20.PageRouteInfo<void> {
  const SplashRoute({List<_i20.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i19.WishlistScreen]
class WishlistRoute extends _i20.PageRouteInfo<void> {
  const WishlistRoute({List<_i20.PageRouteInfo>? children})
      : super(
          WishlistRoute.name,
          initialChildren: children,
        );

  static const String name = 'WishlistRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}
