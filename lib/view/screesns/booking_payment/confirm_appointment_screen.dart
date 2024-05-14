import 'package:barbar_app/core/route/app_route.dart';
import 'package:barbar_app/utils/colors/app_colors.dart';
import 'package:barbar_app/view/screesns/navigation/navigation_screen.dart';
import 'package:barbar_app/view/widgets/app_bar/custom_app_bar.dart';
import 'package:barbar_app/view/widgets/button/custom_button.dart';
import 'package:barbar_app/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ConfirmAppointment extends StatelessWidget {
  const ConfirmAppointment({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

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
                  Get.offAllNamed(AppRoute.navigationScreen);
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
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
          width: width,height: height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 96.h,width: 96.w,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: AppColors.purple_20,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.check_sharp,size: 60,color: AppColors.purple_100),
              ),
              CustomText(text: "Your booking has been placed successfully.\nKindly wait for NYC Salon’s approval.",
                maxLines: 2,top: 24.h,bottom: 44.h),
              CustomElevatedButton(onPressed: (){Get.offAll(NavigationScreen(selectedIndex: 2));
              }, titleText: "Go To Appointment")
            ],
          ),
        ),
      ),
    );
  }
}
