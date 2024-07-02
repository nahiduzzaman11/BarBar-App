import 'package:barbar_app/core/route/app_route.dart';
import 'package:barbar_app/utils/colors/app_colors.dart';
import 'package:barbar_app/utils/icons/app_icons.dart';
import 'package:barbar_app/view/widgets/app_bar/custom_app_bar.dart';
import 'package:barbar_app/view/widgets/button/custom_button.dart';
import 'package:barbar_app/view/widgets/image/custom_image.dart';
import 'package:barbar_app/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SetProfilePhotoScreen extends StatelessWidget {
  const SetProfilePhotoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      top: true,
      child: Scaffold(
        extendBody: true,
        backgroundColor: AppColors.white_100,
        appBar: CustomAppBar(
          spreadRadius: 0.r,
          appBarHeight: 64.h,
          appBarContent: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: SizedBox(
              height: 42.h,width: 42.w,
              child: Icon(Icons.arrow_back_ios, size: 20.h, color: AppColors.white_10),
            ),
          ),
        ),
        body: Container(
          width: width,
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  CustomText(
                    text: "Set Profile Photo",
                    fontSize: 24.sp,
                    color: AppColors.purple_100,
                    fontWeight: FontWeight.w600,
                    top: 24.h,
                    bottom: 24.h,
                  ),
                  CustomText(
                    text:
                        "Take a new photo or upload from your library to set your profile photo.",
                    fontSize: 16.sp,
                    color: AppColors.purple_100,
                    maxLines: 3,
                    bottom: 44.h,
                  ),
                  Container(
                    height: 150.h,
                    width: 150.w,
                    padding: EdgeInsets.all(50.h),
                    decoration: BoxDecoration(
                      color: AppColors.white_80,
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: AppColors.purple_100,
                          width: 1,
                          style: BorderStyle.solid),
                    ),
                    child: const CustomImage(
                        imageSrc: AppIcons.user,
                        imageType: ImageType.svg,
                        imageColor: AppColors.white_60),
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomText(text: "Skip for now", fontSize: 18.sp, right: 8.w),
                      CustomImage(
                          imageSrc: AppIcons.arrow,
                          imageType: ImageType.svg,
                          size: 20.w,imageColor: AppColors.white_10,
                      ),
                    ],
                  ),
                  SizedBox(height: 24.h),
                  CustomElevatedButton(
                      onPressed: () {
                        Get.offAllNamed(AppRoute.signInScreen);
                      },
                      titleText: "Get Started",
                      buttonWidth: width,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
