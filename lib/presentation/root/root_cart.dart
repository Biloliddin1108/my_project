import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class RootCart extends StatelessWidget {
  const RootCart({super.key});

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}
