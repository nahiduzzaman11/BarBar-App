import 'package:barbar_app/core/route/app_route.dart';
import 'package:barbar_app/utils/colors/app_colors.dart';
import 'package:barbar_app/utils/images/app_images.dart';
import 'package:barbar_app/view/widgets/app_bar/custom_app_bar.dart';
import 'package:barbar_app/view/widgets/button/custom_button.dart';
import 'package:barbar_app/view/widgets/text/custom_row_text.dart';
import 'package:barbar_app/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ServiceDetailsScreen extends StatelessWidget {
  const ServiceDetailsScreen({super.key});

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
                  text: "Service Details",
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
                width: width.w,
                height: 200.h,
                margin: EdgeInsets.only(bottom: 24.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  image: const DecorationImage(image: AssetImage(AppImages.banner), fit: BoxFit.fill),
                ),
              ),
              CustomText(
                  text: "Description",
                  fontSize: 18.sp,
                  color: AppColors.purple_100,
                  fontWeight: FontWeight.w600,
                  bottom: 16.h),
              CustomText(
                  text: "Lorem ipsum dolor sit amet consectetur. Id sodales sapien scelerisque cursus vestibulum egestas. Gravida porttitor montes egestas mauris placerat. Condimentum iaculis diam enim lacus ut elementum tortor quis. Tempor iaculis pulvinar sed augue tristique nunc sit. Nunc feugiat eget enim duis. Amet cursus imperdiet proin nunc egestas gravida molestie adipiscing.",
                  maxLines: 10,
                  textAlign: TextAlign.start,
                  bottom: 24.h),
              CustomText(
                  text: "Services",
                  fontSize: 18.sp,bottom: 8.h,
                  color: AppColors.purple_100,
                  fontWeight: FontWeight.w600),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return CustomRowText(
                    title: "Hair Cut",
                    titleTextSize: 14.sp,
                    titleFW: FontWeight.w400,
                    subTitleFW: FontWeight.w400,
                    subTitle: "\$30.00",
                    vertical: 8.h,
                    subTitleTextSize: 18.sp,
                  );
                },
              ),
              SizedBox(height: 24.h),
              CustomElevatedButton(onPressed: (){
                Get.toNamed(AppRoute.selectServiceScreen);
              }, titleText: "Book",buttonWidth: width)
            ],
          ),
        ),
      ),
    );
  }
}
