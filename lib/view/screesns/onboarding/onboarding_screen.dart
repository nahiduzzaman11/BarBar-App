import 'package:barbar_app/core/route/app_route.dart';
import 'package:barbar_app/utils/colors/app_colors.dart';
import 'package:barbar_app/utils/icons/app_icons.dart';
import 'package:barbar_app/view/widgets/image/custom_image.dart';
import 'package:barbar_app/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);

    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;

    return SafeArea(
      top: false,
      child: Scaffold(
        extendBody: true,
        backgroundColor: AppColors.white_100,
        body: Column(
          children: [
            SizedBox(
              height: height * 0.7,
              width: width,
              child: Stack(
                children: [
                  Positioned(
                    left: -width * 0.7,
                    right: -width * 0.3,
                    top: -height * 0.3,
                    child: Container(
                      height: height,
                      width: width,
                      decoration: const ShapeDecoration(shape: OvalBorder(), color: AppColors.purple_100),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 27,
                            right: -27,
                            bottom: 27,
                            child: Container(
                              height: height,
                              width: width,
                              decoration: const ShapeDecoration(
                                  shape: OvalBorder(),
                                  color: AppColors.purple_80),
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 27,
                                    right: -43,
                                    bottom: 27,
                                    child: Container(
                                      height: height,
                                      width: width,
                                      decoration: const ShapeDecoration(
                                          shape: OvalBorder(),
                                          color: AppColors.purple_60),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Center(
                    child: CustomImage(imageSrc: AppIcons.appIcon, size: 80),
                  ),
                ],
              ),
            ),
            Container(
              width: width,
              margin: EdgeInsets.only(left: 20.w, top: 54.h,right: 20.w,bottom: 24.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 30.h,
                    width: 130.w,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(AppIcons.appName),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.h),
                  Row(
                    children: [
                      Flexible(
                        child: CustomText(
                          text: "Elevate your Style with Seamless shopping at your fingertips.",
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColors.white_20,
                          maxLines: 2,
                          right: 32.w,
                          textAlign: TextAlign.start,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.offAllNamed(AppRoute.signInScreen);
                        },
                        child: Container(
                          height: 44.h,
                          width: 44.w,
                          decoration: BoxDecoration(
                            color: AppColors.purple_100,
                            borderRadius: BorderRadius.circular(4.r),
                          ),
                          child: Icon(Icons.arrow_forward_outlined,
                              color: AppColors.white_100, size: 24.h),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
