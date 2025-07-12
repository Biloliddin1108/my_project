import 'package:flutter/material.dart';
import '../../../resource/app_colors.dart';

class WAccountItems extends StatelessWidget {
  final Widget child;
  final String title;

  const WAccountItems({super.key, required this.child, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 14),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            child,
          ],
        ),
        SizedBox(height: 6),
        Divider(),
      ],
    );
  }
}
