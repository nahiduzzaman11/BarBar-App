import 'dart:async';

import 'package:barbar_app/core/route/app_route.dart';
import 'package:barbar_app/utils/colors/app_colors.dart';
import 'package:barbar_app/utils/icons/app_icons.dart';
import 'package:barbar_app/view/widgets/image/custom_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Timer(const Duration(seconds: 3), ()=> Get.offAllNamed(AppRoute.onboarding));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      top: true,
      child: Scaffold(
        extendBody: true,
        backgroundColor: AppColors.white_100,
        body: Center(
          child: CustomImage(imageSrc: AppIcons.appLogo,size: 125),
        ),
      ),
    );
  }
}
