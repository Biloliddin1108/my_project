// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i28;
import 'package:flutter/material.dart' as _i29;
import 'package:my_project/presentation/root/root_cart.dart' as _i19;
import 'package:my_project/presentation/root/root_home.dart' as _i20;
import 'package:my_project/presentation/root/root_profile.dart' as _i21;
import 'package:my_project/presentation/root/root_wishlist.dart' as _i22;
import 'package:my_project/presentation/ui/screens/main/cart_screen.dart'
    as _i4;
import 'package:my_project/presentation/ui/screens/main/home_screen.dart'
    as _i9;
import 'package:my_project/presentation/ui/screens/main/main_screen.dart'
    as _i11;
import 'package:my_project/presentation/ui/screens/main/profile_screen.dart'
    as _i17;
import 'package:my_project/presentation/ui/screens/main/screens/add_address_screen.dart'
    as _i1;
import 'package:my_project/presentation/ui/screens/main/screens/add_cart_screen.dart'
    as _i2;
import 'package:my_project/presentation/ui/screens/main/screens/add_new_card_screen.dart'
    as _i3;
import 'package:my_project/presentation/ui/screens/main/screens/checkout_screen.dart'
    as _i5;
import 'package:my_project/presentation/ui/screens/main/screens/delivery_info_screen.dart'
    as _i6;
import 'package:my_project/presentation/ui/screens/main/screens/edit_address_screen.dart'
    as _i7;
import 'package:my_project/presentation/ui/screens/main/screens/orders_screen.dart'
    as _i13;
import 'package:my_project/presentation/ui/screens/main/screens/payment_method_screen.dart'
    as _i14;
import 'package:my_project/presentation/ui/screens/main/screens/payment_screen.dart'
    as _i15;
import 'package:my_project/presentation/ui/screens/main/screens/product_screen.dart'
    as _i16;
import 'package:my_project/presentation/ui/screens/main/screens/shipping_addresses_screen.dart'
    as _i23;
import 'package:my_project/presentation/ui/screens/main/screens/shipping_change_screen.dart'
    as _i24;
import 'package:my_project/presentation/ui/screens/main/wishlist_screen.dart'
    as _i27;
import 'package:my_project/presentation/ui/screens/onboarding/onboarding_screens.dart'
    as _i12;
import 'package:my_project/presentation/ui/screens/splash/splash_screen.dart'
    as _i26;
import 'package:my_project/presentation/ui/screens/verification/forget_password_screen.dart'
    as _i8;
import 'package:my_project/presentation/ui/screens/verification/login_screen.dart'
    as _i10;
import 'package:my_project/presentation/ui/screens/verification/reset_password_screen.dart'
    as _i18;
import 'package:my_project/presentation/ui/screens/verification/sign_up_screen.dart'
    as _i25;

abstract class $AppRouter extends _i28.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i28.PageFactory> pagesMap = {
    AddAddressRoute.name: (routeData) {
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AddAddressScreen(),
      );
    },
    AddCartRoute.name: (routeData) {
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AddCartScreen(),
      );
    },
    AddNewCardRoute.name: (routeData) {
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.AddNewCardScreen(),
      );
    },
    CardRoute.name: (routeData) {
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.CardScreen(),
      );
    },
    CheckoutRoute.name: (routeData) {
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.CheckoutScreen(),
      );
    },
    DeliveryInfoRoute.name: (routeData) {
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.DeliveryInfoScreen(),
      );
    },
    EditAddressRoute.name: (routeData) {
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.EditAddressScreen(),
      );
    },
    ForgetPasswordRoute.name: (routeData) {
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.ForgetPasswordScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.HomeScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.LoginScreen(),
      );
    },
    MainRoute.name: (routeData) {
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.MainScreen(),
      );
    },
    OnboardingRoutes.name: (routeData) {
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.OnboardingScreens(),
      );
    },
    OrdersRoute.name: (routeData) {
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.OrdersScreen(),
      );
    },
    PaymentMethodRoute.name: (routeData) {
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.PaymentMethodScreen(),
      );
    },
    PaymentRoute.name: (routeData) {
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.PaymentScreen(),
      );
    },
    ProductRoute.name: (routeData) {
      final args = routeData.argsAs<ProductRouteArgs>();
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i16.ProductScreen(
          key: args.key,
          heroIndex: args.heroIndex,
        ),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i17.ProfileScreen(),
      );
    },
    ResetPasswordRoute.name: (routeData) {
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i18.ResetPasswordScreen(),
      );
    },
    RootCart.name: (routeData) {
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i19.RootCart(),
      );
    },
    RootHome.name: (routeData) {
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i20.RootHome(),
      );
    },
    RootProfile.name: (routeData) {
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i21.RootProfile(),
      );
    },
    RootWishlist.name: (routeData) {
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i22.RootWishlist(),
      );
    },
    ShippingAdressesRoute.name: (routeData) {
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i23.ShippingAdressesScreen(),
      );
    },
    ShippingChangeRoute.name: (routeData) {
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i24.ShippingChangeScreen(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i25.SignUpScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i26.SplashScreen(),
      );
    },
    WishlistRoute.name: (routeData) {
      return _i28.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i27.WishlistScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AddAddressScreen]
class AddAddressRoute extends _i28.PageRouteInfo<void> {
  const AddAddressRoute({List<_i28.PageRouteInfo>? children})
      : super(
          AddAddressRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddAddressRoute';

  static const _i28.PageInfo<void> page = _i28.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AddCartScreen]
class AddCartRoute extends _i28.PageRouteInfo<void> {
  const AddCartRoute({List<_i28.PageRouteInfo>? children})
      : super(
          AddCartRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddCartRoute';

  static const _i28.PageInfo<void> page = _i28.PageInfo<void>(name);
}

/// generated route for
/// [_i3.AddNewCardScreen]
class AddNewCardRoute extends _i28.PageRouteInfo<void> {
  const AddNewCardRoute({List<_i28.PageRouteInfo>? children})
      : super(
          AddNewCardRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddNewCardRoute';

  static const _i28.PageInfo<void> page = _i28.PageInfo<void>(name);
}

/// generated route for
/// [_i4.CardScreen]
class CardRoute extends _i28.PageRouteInfo<void> {
  const CardRoute({List<_i28.PageRouteInfo>? children})
      : super(
          CardRoute.name,
          initialChildren: children,
        );

  static const String name = 'CardRoute';

  static const _i28.PageInfo<void> page = _i28.PageInfo<void>(name);
}

/// generated route for
/// [_i5.CheckoutScreen]
class CheckoutRoute extends _i28.PageRouteInfo<void> {
  const CheckoutRoute({List<_i28.PageRouteInfo>? children})
      : super(
          CheckoutRoute.name,
          initialChildren: children,
        );

  static const String name = 'CheckoutRoute';

  static const _i28.PageInfo<void> page = _i28.PageInfo<void>(name);
}

/// generated route for
/// [_i6.DeliveryInfoScreen]
class DeliveryInfoRoute extends _i28.PageRouteInfo<void> {
  const DeliveryInfoRoute({List<_i28.PageRouteInfo>? children})
      : super(
          DeliveryInfoRoute.name,
          initialChildren: children,
        );

  static const String name = 'DeliveryInfoRoute';

  static const _i28.PageInfo<void> page = _i28.PageInfo<void>(name);
}

/// generated route for
/// [_i7.EditAddressScreen]
class EditAddressRoute extends _i28.PageRouteInfo<void> {
  const EditAddressRoute({List<_i28.PageRouteInfo>? children})
      : super(
          EditAddressRoute.name,
          initialChildren: children,
        );

  static const String name = 'EditAddressRoute';

  static const _i28.PageInfo<void> page = _i28.PageInfo<void>(name);
}

/// generated route for
/// [_i8.ForgetPasswordScreen]
class ForgetPasswordRoute extends _i28.PageRouteInfo<void> {
  const ForgetPasswordRoute({List<_i28.PageRouteInfo>? children})
      : super(
          ForgetPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgetPasswordRoute';

  static const _i28.PageInfo<void> page = _i28.PageInfo<void>(name);
}

/// generated route for
/// [_i9.HomeScreen]
class HomeRoute extends _i28.PageRouteInfo<void> {
  const HomeRoute({List<_i28.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i28.PageInfo<void> page = _i28.PageInfo<void>(name);
}

/// generated route for
/// [_i10.LoginScreen]
class LoginRoute extends _i28.PageRouteInfo<void> {
  const LoginRoute({List<_i28.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i28.PageInfo<void> page = _i28.PageInfo<void>(name);
}

/// generated route for
/// [_i11.MainScreen]
class MainRoute extends _i28.PageRouteInfo<void> {
  const MainRoute({List<_i28.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i28.PageInfo<void> page = _i28.PageInfo<void>(name);
}

/// generated route for
/// [_i12.OnboardingScreens]
class OnboardingRoutes extends _i28.PageRouteInfo<void> {
  const OnboardingRoutes({List<_i28.PageRouteInfo>? children})
      : super(
          OnboardingRoutes.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoutes';

  static const _i28.PageInfo<void> page = _i28.PageInfo<void>(name);
}

/// generated route for
/// [_i13.OrdersScreen]
class OrdersRoute extends _i28.PageRouteInfo<void> {
  const OrdersRoute({List<_i28.PageRouteInfo>? children})
      : super(
          OrdersRoute.name,
          initialChildren: children,
        );

  static const String name = 'OrdersRoute';

  static const _i28.PageInfo<void> page = _i28.PageInfo<void>(name);
}

/// generated route for
/// [_i14.PaymentMethodScreen]
class PaymentMethodRoute extends _i28.PageRouteInfo<void> {
  const PaymentMethodRoute({List<_i28.PageRouteInfo>? children})
      : super(
          PaymentMethodRoute.name,
          initialChildren: children,
        );

  static const String name = 'PaymentMethodRoute';

  static const _i28.PageInfo<void> page = _i28.PageInfo<void>(name);
}

/// generated route for
/// [_i15.PaymentScreen]
class PaymentRoute extends _i28.PageRouteInfo<void> {
  const PaymentRoute({List<_i28.PageRouteInfo>? children})
      : super(
          PaymentRoute.name,
          initialChildren: children,
        );

  static const String name = 'PaymentRoute';

  static const _i28.PageInfo<void> page = _i28.PageInfo<void>(name);
}

/// generated route for
/// [_i16.ProductScreen]
class ProductRoute extends _i28.PageRouteInfo<ProductRouteArgs> {
  ProductRoute({
    _i29.Key? key,
    required int heroIndex,
    List<_i28.PageRouteInfo>? children,
  }) : super(
          ProductRoute.name,
          args: ProductRouteArgs(
            key: key,
            heroIndex: heroIndex,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductRoute';

  static const _i28.PageInfo<ProductRouteArgs> page =
      _i28.PageInfo<ProductRouteArgs>(name);
}

class ProductRouteArgs {
  const ProductRouteArgs({
    this.key,
    required this.heroIndex,
  });

  final _i29.Key? key;

  final int heroIndex;

  @override
  String toString() {
    return 'ProductRouteArgs{key: $key, heroIndex: $heroIndex}';
  }
}

/// generated route for
/// [_i17.ProfileScreen]
class ProfileRoute extends _i28.PageRouteInfo<void> {
  const ProfileRoute({List<_i28.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i28.PageInfo<void> page = _i28.PageInfo<void>(name);
}

/// generated route for
/// [_i18.ResetPasswordScreen]
class ResetPasswordRoute extends _i28.PageRouteInfo<void> {
  const ResetPasswordRoute({List<_i28.PageRouteInfo>? children})
      : super(
          ResetPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ResetPasswordRoute';

  static const _i28.PageInfo<void> page = _i28.PageInfo<void>(name);
}

/// generated route for
/// [_i19.RootCart]
class RootCart extends _i28.PageRouteInfo<void> {
  const RootCart({List<_i28.PageRouteInfo>? children})
      : super(
          RootCart.name,
          initialChildren: children,
        );

  static const String name = 'RootCart';

  static const _i28.PageInfo<void> page = _i28.PageInfo<void>(name);
}

/// generated route for
/// [_i20.RootHome]
class RootHome extends _i28.PageRouteInfo<void> {
  const RootHome({List<_i28.PageRouteInfo>? children})
      : super(
          RootHome.name,
          initialChildren: children,
        );

  static const String name = 'RootHome';

  static const _i28.PageInfo<void> page = _i28.PageInfo<void>(name);
}

/// generated route for
/// [_i21.RootProfile]
class RootProfile extends _i28.PageRouteInfo<void> {
  const RootProfile({List<_i28.PageRouteInfo>? children})
      : super(
          RootProfile.name,
          initialChildren: children,
        );

  static const String name = 'RootProfile';

  static const _i28.PageInfo<void> page = _i28.PageInfo<void>(name);
}

/// generated route for
/// [_i22.RootWishlist]
class RootWishlist extends _i28.PageRouteInfo<void> {
  const RootWishlist({List<_i28.PageRouteInfo>? children})
      : super(
          RootWishlist.name,
          initialChildren: children,
        );

  static const String name = 'RootWishlist';

  static const _i28.PageInfo<void> page = _i28.PageInfo<void>(name);
}

/// generated route for
/// [_i23.ShippingAdressesScreen]
class ShippingAdressesRoute extends _i28.PageRouteInfo<void> {
  const ShippingAdressesRoute({List<_i28.PageRouteInfo>? children})
      : super(
          ShippingAdressesRoute.name,
          initialChildren: children,
        );

  static const String name = 'ShippingAdressesRoute';

  static const _i28.PageInfo<void> page = _i28.PageInfo<void>(name);
}

/// generated route for
/// [_i24.ShippingChangeScreen]
class ShippingChangeRoute extends _i28.PageRouteInfo<void> {
  const ShippingChangeRoute({List<_i28.PageRouteInfo>? children})
      : super(
          ShippingChangeRoute.name,
          initialChildren: children,
        );

  static const String name = 'ShippingChangeRoute';

  static const _i28.PageInfo<void> page = _i28.PageInfo<void>(name);
}

/// generated route for
/// [_i25.SignUpScreen]
class SignUpRoute extends _i28.PageRouteInfo<void> {
  const SignUpRoute({List<_i28.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const _i28.PageInfo<void> page = _i28.PageInfo<void>(name);
}

/// generated route for
/// [_i26.SplashScreen]
class SplashRoute extends _i28.PageRouteInfo<void> {
  const SplashRoute({List<_i28.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i28.PageInfo<void> page = _i28.PageInfo<void>(name);
}

/// generated route for
/// [_i27.WishlistScreen]
class WishlistRoute extends _i28.PageRouteInfo<void> {
  const WishlistRoute({List<_i28.PageRouteInfo>? children})
      : super(
          WishlistRoute.name,
          initialChildren: children,
        );

  static const String name = 'WishlistRoute';

  static const _i28.PageInfo<void> page = _i28.PageInfo<void>(name);
}
