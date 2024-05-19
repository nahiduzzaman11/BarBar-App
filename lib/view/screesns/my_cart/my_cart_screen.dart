import 'package:barbar_app/core/route/app_route.dart';
import 'package:barbar_app/utils/colors/app_colors.dart';
import 'package:barbar_app/utils/images/app_images.dart';
import 'package:barbar_app/view/widgets/app_bar/custom_app_bar.dart';
import 'package:barbar_app/view/widgets/pop_up/custom_pop_up.dart';
import 'package:barbar_app/view/widgets/text/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MyCartScreen extends StatefulWidget {
  const MyCartScreen({super.key});

  @override
  State<MyCartScreen> createState() => _MyCartScreenState();
}

class _MyCartScreenState extends State<MyCartScreen> {
  int count = 1;
  int length = 5;

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
                  child: Icon(Icons.arrow_back_ios, size: 20.h, color: AppColors.white_10),
                ),
              ),
              CustomText(
                  text: "My Cart",
                  fontSize: 18.sp,
                  color: AppColors.purple_100),

              GestureDetector(
                onTap: () {
                  showDialog(context: context, builder: (context) => const CustomPopUp());
                },
                child: SizedBox(
                  height: 42.h,width: 42.w,
                  child: Icon(CupertinoIcons.delete,color: AppColors.red_100,size: 18.h),
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
          physics: const ClampingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: length,
                itemBuilder: (context, index) {
                  return Container(
                    width: width,
                    padding: EdgeInsets.symmetric(vertical: 16.h),
                    margin: EdgeInsets.only(bottom: 8.h),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: length-1 == index ? AppColors.white_100 : AppColors.white_80, width: 1.h),
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 24.h,
                              width: 24.w,
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(right: 16.w),
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.purple_100,
                              ),
                              child: CustomText(
                                  text: "1",
                                  color: AppColors.white_100,
                                  fontSize: 12.sp,
                              ),
                            ),
                            Container(
                              height: 60.h,
                              width: 60.w,
                              margin: EdgeInsets.only(right: 16.w),
                              decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.purple_100, width: 1.w),
                                  borderRadius: BorderRadius.circular(4.r),
                                  image: const DecorationImage(
                                      image: AssetImage(AppImages.banner),
                                      fit: BoxFit.fill,
                                  ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                    text: "Brush Set",
                                    fontSize: 16.sp,
                                    bottom: 16.h),
                                CustomText(text: "\$120", fontSize: 14.sp),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 16.w),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  count = count <= 1 ? 1 : count - 1;
                                });
                              },
                              child: Container(
                                height: 24.h,
                                width: 24.w,
                                alignment: Alignment.center,
                                margin: EdgeInsets.only(right: 16.w),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: AppColors.purple_100, width: 1.w),
                                ),
                                child: Icon(Icons.remove,
                                    color: AppColors.purple_100, size: 14.h),
                              ),
                            ),
                            CustomText(
                                text: "$count",
                                fontSize: 18.sp,
                                color: AppColors.purple_100),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  count = count + 1;
                                });
                              },
                              child: Container(
                                height: 24.h,
                                width: 24.w,
                                alignment: Alignment.center,
                                margin: EdgeInsets.only(left: 16.w),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: AppColors.purple_100, width: 1.w),
                                ),
                                child: Icon(Icons.add, color: AppColors.purple_100, size: 14.h),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 52.h,
          margin: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40.r),
            color: AppColors.purple_100,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomText(
                      text: "Total",
                      fontSize: 12.sp,
                      color: AppColors.white_100,
                      right: 4.w),
                  CustomText(
                      text: "\$620",
                      fontSize: 18.sp,
                      color: AppColors.white_100),
                ],
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoute.checkoutScreen);
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 24.w),
                  decoration: BoxDecoration(
                    color: AppColors.white_100,
                    borderRadius: BorderRadius.circular(25.r),
                  ),
                  child: CustomText(
                      text: "Checkout($count)", fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
