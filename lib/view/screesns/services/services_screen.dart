import 'package:barbar_app/utils/colors/app_colors.dart';
import 'package:barbar_app/utils/images/app_images.dart';
import 'package:barbar_app/view/widgets/app_bar/custom_app_bar.dart';
import 'package:barbar_app/view/widgets/grid_card/custom_grid_card.dart';
import 'package:barbar_app/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ServicesScreen extends StatefulWidget {
  const ServicesScreen({super.key});

  @override
  State<ServicesScreen> createState() => _ServicesScreenState();
}

class _ServicesScreenState extends State<ServicesScreen> {

  final List<Map<String, String>> data = [
    {"image": AppImages.banner, "title": "Salon Salon Salon Salon Salon"},
    {"image": AppImages.banner, "title": "Salon"},
    {"image": AppImages.banner, "title": "Salon"},
    {"image": AppImages.banner, "title": "Salon"},
    {"image": AppImages.banner, "title": "Salon"},
    {"image": AppImages.banner, "title": "Salon"},
    {"image": AppImages.banner, "title": "Salon"},
    {"image": AppImages.banner, "title": "Salon"},
    {"image": AppImages.banner, "title": "Salon"}
  ];

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
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
                  height: 42.h,width: 42.w,
                  child: Icon(Icons.arrow_back_ios, size: 20.h, color: AppColors.white_10),
                ),
              ),
              CustomText(text: "Services",fontSize: 18.sp,color: AppColors.purple_100),
              SizedBox(height: 42.h,width: 42.w)
            ],
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24.w,vertical: 24.h),
          physics: const ClampingScrollPhysics(),
          child: Column(
            children: [
              CustomGridCard(physics: const NeverScrollableScrollPhysics(), data: data),
            ],
          ),
        ),
      ),
    );
  }
}
