import 'package:barbar_app/core/route/app_route.dart';
import 'package:barbar_app/utils/colors/app_colors.dart';
import 'package:barbar_app/utils/icons/app_icons.dart';
import 'package:barbar_app/utils/images/app_images.dart';
import 'package:barbar_app/view/widgets/app_bar/custom_app_bar.dart';
import 'package:barbar_app/view/widgets/button/custom_button.dart';
import 'package:barbar_app/view/widgets/image/custom_image.dart';
import 'package:barbar_app/view/widgets/text/custom_row_text.dart';
import 'package:barbar_app/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ConfirmBookingScreen extends StatelessWidget {
  const ConfirmBookingScreen({super.key});

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
          appBarContent: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: SizedBox(
                  height: 42.h,
                  width: 42.w,
                  child: Icon(Icons.arrow_back_ios,
                      size: 20.h, color: AppColors.white_10),
                ),
              ),
              CustomText(
                  text: "Confirm Appointment",
                  fontSize: 18.sp,
                  color: AppColors.purple_100),
              SizedBox(height: 42.h, width: 42.w)
            ],
          ),
        ),
        body: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: width,
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                margin: EdgeInsets.only(bottom: 16.h),
                decoration: BoxDecoration(
                  color: AppColors.purple_10,
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 50.h,width: 50.w,
                          margin: EdgeInsets.only(right: 16.w),
                          decoration: BoxDecoration(
                            image: const DecorationImage(image: AssetImage(AppImages.banner),fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(4.r)
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(text: "NYC Salon", fontSize: 18.sp, fontWeight: FontWeight.w600, color: AppColors.purple_100,bottom: 8.h),
                            Row(
                              children: [
                                CustomImage(imageSrc: AppIcons.star, size: 14.h),
                                CustomText(text: "(4.5)", fontSize: 12.sp, left: 4.w),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 12.h),
                    CustomRowText(title: "Appointment ID", titleTextSize: 14.sp,
                      titleFW: FontWeight.w600, titleColor: AppColors.purple_100,
                      subTitle: "112233", subTitleColor: AppColors.white_10, vertical: 4.h),
                    CustomRowText(title: "Date", titleTextSize: 14.sp,
                      titleFW: FontWeight.w600, titleColor: AppColors.purple_100,
                      subTitle: "26/11/2023", subTitleColor: AppColors.white_10, vertical: 4.h),
                    CustomRowText(title: "Time", titleTextSize: 14.sp,
                      titleFW: FontWeight.w600, titleColor: AppColors.purple_100,
                      subTitle: "10:00 am", subTitleColor: AppColors.white_10, vertical: 4.h),
                    CustomRowText(title: "Services", titleTextSize: 14.sp,
                      titleFW: FontWeight.w600, titleColor: AppColors.purple_100,
                      subTitle: "Heir Style", subTitleColor: AppColors.white_10, vertical: 4.h),
                    CustomRowText(title: "Total Amount", titleTextSize: 14.sp,
                      titleFW: FontWeight.w600, titleColor: AppColors.purple_100,
                      subTitle: "\$300", subTitleColor: AppColors.white_10, vertical: 4.h),
                    CustomRowText(title: "Booking Amount", titleTextSize: 14.sp,
                      titleFW: FontWeight.w600, titleColor: AppColors.purple_100,
                      subTitle: "\$100", subTitleColor: AppColors.white_10, vertical: 4.h),
                  ],
                ),
              ),
              Container(
                width: width,
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                decoration: BoxDecoration(
                  color: AppColors.purple_10,
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomText(text: "Payment Method", fontSize: 18.sp, fontWeight: FontWeight.w600),
                        Icon(Icons.keyboard_arrow_up, size: 24.h, color: AppColors.white_10)
                      ],
                    ),
                    SizedBox(height: 24.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 20.h, width: 20.w,
                              decoration: const BoxDecoration(
                                color: AppColors.white_100,
                                shape: BoxShape.circle,
                              ),
                              child: Container(
                                margin: EdgeInsets.all(2.h),
                                decoration: const BoxDecoration(
                                  color: AppColors.purple_100,
                                  shape: BoxShape.circle
                                ),
                              ),
                            ),
                            CustomText(text: "Credit Card",fontWeight: FontWeight.w600,left: 16.w)
                          ],
                        ),
                        const CustomText(text: "\$630", fontWeight: FontWeight.w600)
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
          child: CustomElevatedButton(onPressed: (){
            Get.toNamed(AppRoute.addPaymentScreen);
          }, titleText: "Continue"),
        ),
      ),
    );
  }
}
