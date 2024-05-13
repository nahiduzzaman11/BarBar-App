import 'package:barbar_app/utils/colors/app_colors.dart';
import 'package:flutter/material.dart';

class SelectServiceScreen extends StatelessWidget {
  const SelectServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        extendBody: true,
        backgroundColor: AppColors.white_100,
      ),
    );
  }
}
