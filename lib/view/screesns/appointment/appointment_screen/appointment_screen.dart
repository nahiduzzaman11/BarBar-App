import 'package:barbar_app/core/route/app_route.dart';
import 'package:barbar_app/utils/colors/app_colors.dart';
import 'package:barbar_app/view/widgets/app_bar/custom_app_bar.dart';
import 'package:barbar_app/view/widgets/appointment_card/custom_appointment_card.dart';
import 'package:barbar_app/view/widgets/button/custom_button.dart';
import 'package:barbar_app/view/widgets/tab_bar/custom_tab_bar.dart';
import 'package:barbar_app/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AppointmentScreen extends StatefulWidget {
  const AppointmentScreen({super.key});

  @override
  State<AppointmentScreen> createState() => _AppointmentScreenState();
}

class _AppointmentScreenState extends State<AppointmentScreen> {

  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    //var width = MediaQuery.of(context).size.width;

    return SafeArea(
      top: true,
      child: Scaffold(
        extendBody: true,
        backgroundColor: AppColors.white_100,
        appBar: CustomAppBar(
          spreadRadius: 0.r,
          appBarHeight: 64.h,
          appBarContent: Align(
              alignment: Alignment.center,
              child: CustomText(
                  text: "Appointments",
                  fontSize: 18.sp,
                  color: AppColors.purple_100,
                  fontWeight: FontWeight.w600),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24.w,vertical: 24.h),
          physics: const ClampingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTab(
                titles: const ['Pending', 'Appointment'],
                onTabSelected: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                selectedIndex: _selectedIndex,
              ),
              _selectedIndex == 1 ? SizedBox(
                height: MediaQuery.of(context).size.height*0.55,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(text: "You’ve nothing here",fontSize: 18.sp,color: AppColors.purple_60,bottom: 16.h),
                    CustomElevatedButton(onPressed: (){
                      Get.toNamed(AppRoute.salonsScreen);
                    }, titleText: "Explore Salons",titleSize: 16.sp,titleWeight: FontWeight.w500),
                  ],
                ),
              ) : CustomAppointmentCard(onTap: () => Get.toNamed(AppRoute.appointmentDetailsScreen)),
            ],
          ),
        ),
      ),
    );
  }
}
