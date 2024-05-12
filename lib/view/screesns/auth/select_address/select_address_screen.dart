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

class SelectAddressScreen extends StatelessWidget {
  const SelectAddressScreen({super.key});

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
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
          physics: const BouncingScrollPhysics(),
          child: SizedBox(
            width: width,
            child: Column(
              children: [
                CustomText(
                  text: "Select Your Address",
                  fontSize: 24.sp,
                  color: AppColors.purple_100,
                  fontWeight: FontWeight.w600,
                  top: 24.h,
                  bottom: 24.h,
                ),
                CustomTextField(
                  hintText: "Enter your address",
                  hintStyle: GoogleFonts.lato(
                      color: AppColors.white_40, fontSize: 14.sp),
                  prefixIcon: const CustomImage(
                    imageSrc: AppIcons.location,
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
              Get.toNamed(AppRoute.setPasswordScreen);
            },
            titleText: "Continue",
            buttonWidth: width,
          ),
        ),
      ),
    );
  }
}
