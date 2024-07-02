import 'package:barbar_app/core/route/app_route.dart';
import 'package:barbar_app/utils/colors/app_colors.dart';
import 'package:barbar_app/utils/icons/app_icons.dart';
import 'package:barbar_app/view/screesns/profile/inner_widgets/profile_card.dart';
import 'package:barbar_app/view/widgets/app_bar/custom_app_bar.dart';
import 'package:barbar_app/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        extendBody: true,
        backgroundColor: AppColors.white_100,
        appBar: CustomAppBar(
          spreadRadius: 0.r,
          appBarHeight: 64.h,
          appBarContent: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: SizedBox(
                  height: 42.h,
                  width: 42.w,
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 20.h,
                    color: AppColors.white_10,
                  ),
                ),
              ),
              CustomText(
                text: "Settings",
                fontSize: 18.sp,
                color: AppColors.purple_100,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(height: 42.h, width: 42.w)
            ],
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
          physics: const ClampingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProfileCard(
                imageSrc: AppIcons.password,
                title: "Change Password",
                onTap: () {
                  Get.offAndToNamed(AppRoute.changePasswordScreen);
                },
              ),
              SizedBox(height: 16.h),
              const ProfileCard(
                  imageSrc: AppIcons.language, title: "Change Language"),
              SizedBox(height: 16.h),
              const ProfileCard(
                  imageSrc: AppIcons.terms, title: "Terms Of Services"),
              SizedBox(height: 16.h),
              const ProfileCard(
                  imageSrc: AppIcons.privacy, title: "Privacy Policy"),
              SizedBox(height: 16.h),
              const ProfileCard(imageSrc: AppIcons.aboutUs, title: "About Us"),
              SizedBox(height: 16.h),
            ],
          ),
        ),
      ),
    );
  }
}
