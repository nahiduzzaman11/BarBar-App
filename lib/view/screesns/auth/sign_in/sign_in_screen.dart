import 'package:barbar_app/core/route/app_route.dart';
import 'package:barbar_app/utils/colors/app_colors.dart';
import 'package:barbar_app/utils/icons/app_icons.dart';
import 'package:barbar_app/view/widgets/button/custom_button.dart';
import 'package:barbar_app/view/widgets/image/custom_image.dart';
import 'package:barbar_app/view/widgets/text/custom_text.dart';
import 'package:barbar_app/view/widgets/textfield/custom_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

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
                    text: "Welcome back!",
                    fontSize: 18.sp,
                    color: AppColors.purple_100,
                    top: 8.h,
                    bottom: 24.h,
                    fontWeight: FontWeight.w600),
                CustomTextField(
                  hintText: "Enter your email",
                  hintStyle: GoogleFonts.lato(
                      color: AppColors.white_40, fontSize: 16.sp),
                  prefixIcon: const CustomImage(
                      imageSrc: AppIcons.email,
                      imageType: ImageType.svg,
                      imageColor: AppColors.white_40),
                ),
                SizedBox(height: 12.h),
                CustomTextField(
                  hintText: "Enter your password",
                  hintStyle: GoogleFonts.lato(
                      color: AppColors.white_40, fontSize: 16.sp),
                  isPassword: true,
                  prefixIcon: const CustomImage(
                      imageSrc: AppIcons.password,
                      imageType: ImageType.svg,
                      imageColor: AppColors.white_40),
                ),
                GestureDetector(
                  onTap: () {
                    Get.toNamed(AppRoute.forgetPasswordScreen);
                  },
                  child: Align(
                    alignment: Alignment.topRight,
                    child: CustomText(
                        text: "Forget Password",
                        fontSize: 18.sp,
                        color: AppColors.purple_100,
                        fontWeight: FontWeight.w600,
                        top: 16.h,bottom: 24.h,
                    ),
                  ),
                ),
                CustomElevatedButton(onPressed: (){}, titleText: "Login",buttonWidth: width),
                SizedBox(height: 44.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(child: Divider(color: AppColors.purple_100,height: 1.h,thickness: 1),),
                    CustomText(text: "Or continue with",color: AppColors.purple_100,left: 8.w,right: 8.w),
                    Flexible(child: Divider(color: AppColors.purple_100,height: 1.h,thickness: 1),),
                  ],
                ),
                SizedBox(height: 24.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        border: Border.all(color: AppColors.white_80,style: BorderStyle.solid,width: 1)
                      ),
                      child: CustomImage(imageSrc: AppIcons.google,imageType: ImageType.svg,size: 28.h,),
                    ),
                    SizedBox(width: 16.w),
                    Container(
                      padding: EdgeInsets.all(8.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        border: Border.all(color: AppColors.white_80,style: BorderStyle.solid,width: 1)
                      ),
                      child: CustomImage(imageSrc: AppIcons.apple,imageType: ImageType.svg,size: 28.h,),
                    ),
                  ],
                ),
                SizedBox(height: 44.h),
                GestureDetector(
                  onTap: () {
                    Get.toNamed(AppRoute.signUpScreen);
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(text: "Didn’t have an account?",color: AppColors.purple_100,right: 4.w,fontSize: 16.sp),
                      CustomText(text: "Sign Up",color: AppColors.purple_100,fontSize: 18.sp,fontWeight: FontWeight.w600),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
