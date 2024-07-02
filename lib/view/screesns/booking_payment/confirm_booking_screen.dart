import 'package:barbar_app/core/route/app_route.dart';
import 'package:barbar_app/utils/colors/app_colors.dart';
import 'package:barbar_app/view/widgets/app_bar/custom_app_bar.dart';
import 'package:barbar_app/view/widgets/appointment_card/custom_appointment_card.dart';
import 'package:barbar_app/view/widgets/button/custom_button.dart';
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
          appBarHeight: 64.h,
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
              const CustomAppointmentCard(),
              SizedBox(height: 16.h),
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
