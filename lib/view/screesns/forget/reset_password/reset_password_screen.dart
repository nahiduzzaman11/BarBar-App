import 'package:barbar_app/core/route/app_route.dart';
import 'package:barbar_app/utils/colors/app_colors.dart';
import 'package:barbar_app/utils/icons/app_icons.dart';
import 'package:barbar_app/view/widgets/app_bar/custom_app_bar.dart';
import 'package:barbar_app/view/widgets/button/custom_button.dart';
import 'package:barbar_app/view/widgets/image/custom_image.dart';
import 'package:barbar_app/view/widgets/text/custom_text.dart';
import 'package:barbar_app/view/widgets/textfield/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

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
          appBarContent: IconButton(
            icon: Icon(Icons.arrow_back_ios, size: 20.h, color: AppColors.white_10),
            onPressed: () {
              Get.back();
            },
          ),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 24.h),
          child: SizedBox(
            width: width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  text: "Reset Password",
                  fontSize: 24.sp,
                  color: AppColors.purple_100,
                  fontWeight: FontWeight.w600,
                  top: 24.h,
                  bottom: 24.h,
                ),
                CustomText(
                  text: "Password must have 8-10 characters.",
                  fontSize: 16.sp,
                  maxLines: 3,
                  color: AppColors.purple_100,
                  bottom: 44.h,
                ),
                CustomTextField(
                  hintText: "Enter your password",
                  hintStyle: GoogleFonts.lato(color: AppColors.white_40, fontSize: 14.sp),
                  isPassword: true,
                  prefixIcon: const CustomImage(
                    imageSrc: AppIcons.password,
                    imageType: ImageType.svg,
                    imageColor: AppColors.white_40,
                  ),
                ),
                SizedBox(height: 24.h),
                CustomTextField(
                  hintText: "Re-enter your password",
                  hintStyle: GoogleFonts.lato(color: AppColors.white_40, fontSize: 14.sp),
                  isPassword: true,
                  prefixIcon: const CustomImage(
                    imageSrc: AppIcons.password,
                    imageType: ImageType.svg,
                    imageColor: AppColors.white_40,
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
          child: CustomElevatedButton(
            onPressed: () {
              Get.offAllNamed(AppRoute.signInScreen);
            },
            titleText: "Reset Password",
            buttonWidth: width,
          ),
        ),
      ),
    );
  }
}
