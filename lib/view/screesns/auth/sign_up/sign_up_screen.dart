import 'package:barbar_app/core/route/app_route.dart';
import 'package:barbar_app/utils/colors/app_colors.dart';
import 'package:barbar_app/utils/icons/app_icons.dart';
import 'package:barbar_app/view/widgets/button/custom_button.dart';
import 'package:barbar_app/view/widgets/image/custom_image.dart';
import 'package:barbar_app/view/widgets/text/custom_text.dart';
import 'package:barbar_app/view/widgets/textfield/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      top: true,
      child: Scaffold(
        extendBody: true,
        backgroundColor: AppColors.white_100,
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
          physics: const BouncingScrollPhysics(),
          child: SizedBox(
            width: width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImage(imageSrc: AppIcons.appLogo, size: 90.h),
                CustomText(
                    text: "Let’s get started!",
                    fontSize: 24.sp,
                    color: AppColors.purple_100,
                    top: 8.h,
                    bottom: 44.h,
                    fontWeight: FontWeight.w600,
                ),

                CustomTextField(
                  hintText: "Enter your full name",
                  hintStyle: GoogleFonts.lato(color: AppColors.white_40, fontSize: 14.sp),
                  prefixIcon: const CustomImage(
                      imageSrc: AppIcons.user,
                      imageType: ImageType.svg,
                      imageColor: AppColors.white_40,
                  ),
                ),
                SizedBox(height: 16.h),
                CustomTextField(
                  hintText: "Enter your email",
                  hintStyle: GoogleFonts.lato(color: AppColors.white_40, fontSize: 14.sp),
                  prefixIcon: const CustomImage(
                    imageSrc: AppIcons.email,
                    imageType: ImageType.svg,
                    imageColor: AppColors.white_40,
                  ),
                ),

                SizedBox(height: 16.h),
                CustomTextField(
                  hintText: "Enter your phone number",
                  hintStyle: GoogleFonts.lato(color: AppColors.white_40, fontSize: 14.sp),
                  prefixIcon: const CustomImage(
                    imageSrc: AppIcons.phone,
                    imageType: ImageType.svg,
                    imageColor: AppColors.white_40,
                  ),
                ),

                SizedBox(height: 16.h),
                CustomTextField(
                  hintText: "Enter your date of birth",
                  hintStyle: GoogleFonts.lato(color: AppColors.white_40, fontSize: 14.sp),
                  prefixIcon: const CustomImage(
                    imageSrc: AppIcons.dob,
                    imageType: ImageType.svg,
                    imageColor: AppColors.white_40,
                  ),
                ),

                SizedBox(height: 44.h),
                CustomElevatedButton(onPressed: (){
                  Get.toNamed(AppRoute.verifyEmailScreen);
                }, titleText: "Continue",buttonWidth: width)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
