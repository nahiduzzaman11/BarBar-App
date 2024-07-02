import 'package:barbar_app/core/route/app_route.dart';
import 'package:barbar_app/utils/colors/app_colors.dart';
import 'package:barbar_app/utils/icons/app_icons.dart';
import 'package:barbar_app/view/widgets/app_bar/custom_app_bar.dart';
import 'package:barbar_app/view/widgets/image/custom_image.dart';
import 'package:barbar_app/view/widgets/text/custom_text.dart';
import 'package:barbar_app/view/widgets/textfield/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

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
                text: "Change Password",
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
              CustomTextField(
                hintText: "Enter your current password",
                hintStyle: GoogleFonts.lato(color: AppColors.white_40, fontSize: 14.sp),
                isPassword: true,
                prefixIcon: const CustomImage(
                  imageSrc: AppIcons.password,
                  imageType: ImageType.svg,
                  imageColor: AppColors.white_40,
                ),
              ),
              SizedBox(height: 16.h),
              CustomTextField(
                hintText: "Enter your new password",
                hintStyle: GoogleFonts.lato(color: AppColors.white_40, fontSize: 14.sp),
                isPassword: true,
                prefixIcon: const CustomImage(
                  imageSrc: AppIcons.password,
                  imageType: ImageType.svg,
                  imageColor: AppColors.white_40,
                ),
              ),
              SizedBox(height: 16.h),
              CustomTextField(
                hintText: "Re-enter your new password",
                hintStyle: GoogleFonts.lato(color: AppColors.white_40, fontSize: 14.sp),
                isPassword: true,
                textInputAction: TextInputAction.done,
                prefixIcon: const CustomImage(
                  imageSrc: AppIcons.password,
                  imageType: ImageType.svg,
                  imageColor: AppColors.white_40,
                ),
              ),
              SizedBox(height: 24.h),
              GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoute.forgetPasswordScreen);
                },
                child: Align(
                  alignment: Alignment.topRight,
                  child: CustomText(
                    text: "Forget Password?",
                    fontSize: 18.sp,
                    color: AppColors.purple_100,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
