import 'package:barbar_app/core/route/app_route.dart';
import 'package:barbar_app/utils/colors/app_colors.dart';
import 'package:barbar_app/view/widgets/app_bar/custom_app_bar.dart';
import 'package:barbar_app/view/widgets/button/custom_button.dart';
import 'package:barbar_app/view/widgets/text/custom_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SelectDateTime extends StatefulWidget {
  const SelectDateTime({super.key});

  @override
  State<SelectDateTime> createState() => _SelectDateTimeState();
}

class _SelectDateTimeState extends State<SelectDateTime> {
  final List<String> slider = [
    "November 2023",
    "December 2023",
    "January 2024",
    "February 2024",
    "March 2024",
    "April 2024",
    "May 2024",
    "June 2024",
    "July 2024",
    "August 2024",
    "September 2024",
    "October 2024",
    "November 2024",
  ];
  final List<String> date = [
    "November 2023",
    "December 2023",
    "January 2024",
    "February 2024",
    "March 2024",
    "April 2024",
    "May 2024",
    "June 2024",
    "July 2024",
    "August 2024",
    "September 2024",
    "October 2024",
    "November 2024",
  ];
  final List<String> time = [
    "9:00 am",
    "10:00 am",
    "11:00 am",
    "12:00 am",
    "1:00 pm",
    "2:00 pm",
    "3:00 pm",
    "4:00 pm",
    "5:00 pm",
    "6:00 pm",
    "7:00 pm",
    "8:00 pm",
  ];
  int currentIndex = 0;
  int clicked = 0;

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
                  text: "Date & Time",
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
                height: 56.h,
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                decoration: BoxDecoration(
                  color: AppColors.purple_10,
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: CarouselSlider(
                  items: slider.map((item) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  currentIndex = currentIndex - 1;
                                });
                              },
                              child: Icon(Icons.arrow_back_ios,
                                  size: 20.h, color: AppColors.purple_100),
                            ),
                            CustomText(
                                text: item,
                                fontSize: 18.sp,
                                color: AppColors.purple_100,
                                fontWeight: FontWeight.w600),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  currentIndex = currentIndex + 1;
                                });
                              },
                              child: Icon(Icons.arrow_forward_ios,
                                  size: 20.h, color: AppColors.purple_100),
                            ),
                          ],
                        );
                      },
                    );
                  }).toList(),
                  options: CarouselOptions(
                    aspectRatio: 2.5,
                    viewportFraction: 1,
                    enlargeCenterPage: true,
                    autoPlay: false,
                    disableCenter: true,
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                  ),
                ),
              ),
              CustomText(
                  text: "Date",
                  fontSize: 18.sp,
                  color: AppColors.purple_100,
                  fontWeight: FontWeight.w600,
                  top: 24.h,
                  bottom: 16.h,
              ),
              SizedBox(
                height: 68.h,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 15,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                      margin: EdgeInsets.only(right: 8.w),
                      decoration: BoxDecoration(
                          color: AppColors.purple_80,
                          borderRadius: BorderRadius.circular(8.r),
                          border: Border.all(color: AppColors.purple_60, width: 1.w)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomText(
                              text: "26",
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColors.white_100,
                              bottom: 8.h),
                          CustomText(
                              text: "SUN",
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColors.white_100),
                        ],
                      ),
                    );
                  },
                ),
              ),
              CustomText(
                  text: "Time",
                  fontSize: 18.sp,
                  color: AppColors.purple_100,
                  fontWeight: FontWeight.w600,
                  top: 24.h,
                  bottom: 16.h),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 44.h,
                    crossAxisSpacing: 16.h,
                    mainAxisSpacing: 16.w),
                itemCount: time.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        clicked = index;
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: clicked == index? AppColors.purple_100 : AppColors.white_100,
                        borderRadius: BorderRadius.circular(8.r),
                        border: Border.all(color: clicked == index? AppColors.purple_100 : AppColors.purple_60, width: 1.w)
                      ),
                      child: CustomText(text: time[index], color: clicked == index ? AppColors.white_100 : AppColors.white_10, fontSize: 18.sp),
                    ),
                  );
                },
              ),
              SizedBox(height: 34.h),
              CustomElevatedButton(onPressed: (){
                Get.toNamed(AppRoute.confirmBookingScreen);
              }, titleText: "Continue", buttonWidth: width)
            ],
          ),
        ),
      ),
    );
  }
}
