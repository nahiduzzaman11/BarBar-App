import 'package:barbar_app/core/route/app_route.dart';
import 'package:barbar_app/utils/colors/app_colors.dart';
import 'package:barbar_app/view/widgets/app_bar/custom_app_bar.dart';
import 'package:barbar_app/view/widgets/button/custom_button.dart';
import 'package:barbar_app/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class GetOTPScreen extends StatelessWidget {
  const GetOTPScreen({super.key});

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
          padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 24.h),
          physics: const BouncingScrollPhysics(),
          child: SizedBox(
            width: width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  text: "Get OTP",
                  fontSize: 24.sp,
                  color: AppColors.purple_100,
                  fontWeight: FontWeight.w600,
                  top: 24.h,
                  bottom: 24.h,
                ),
                CustomText(
                  text: "Please enter the OTP code.",
                  fontSize: 16.sp,
                  maxLines: 3,
                  color: AppColors.purple_100,
                  bottom: 44.h,
                ),

                //OTP Section...
                PinCodeTextField(
                  length: 6,
                  obscureText: false,
                  keyboardType: TextInputType.number,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  textStyle: GoogleFonts.lato(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.white_10),
                  pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(8),
                      disabledColor: AppColors.white_100,
                      fieldHeight: 56,
                      fieldWidth: 44,
                      activeColor: AppColors.purple_100,
                      inactiveColor: AppColors.white_10,
                      activeFillColor: AppColors.white_100,
                      inactiveFillColor: AppColors.white_100,
                      selectedFillColor: AppColors.white_100,
                      selectedColor: AppColors.white_10),
                  backgroundColor: Colors.transparent,
                  enableActiveFill: false,
                  onCompleted: (v) {},
                  onChanged: (value) {},
                  beforeTextPaste: (text) {
                    return true;
                  },
                  appContext: context,
                ),
                SizedBox(height: 44.h),
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                          text: "Didn’t receive the OTP?",
                          color: AppColors.purple_100,
                          right: 4.w,
                          fontSize: 16.sp),
                      CustomText(
                          text: "Resend",
                          color: AppColors.purple_100,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600),
                    ],
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
              Get.toNamed(AppRoute.resetPasswordScreen);
            },
            titleText: "Verify",
            buttonWidth: width,
          ),
        ),
      ),
    );
  }
}
