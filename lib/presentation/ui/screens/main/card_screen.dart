import 'package:flutter/material.dart';
import 'package:my_project/presentation/ui/resource/app_colors.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        automaticallyImplyLeading: false,
        title: const Text("Card"),
        centerTitle: true,
      ),
      backgroundColor: AppColors.white,
    );
  }
}
