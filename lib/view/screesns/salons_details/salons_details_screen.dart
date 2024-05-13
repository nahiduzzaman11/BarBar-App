import 'package:barbar_app/utils/colors/app_colors.dart';
import 'package:barbar_app/utils/icons/app_icons.dart';
import 'package:barbar_app/utils/images/app_images.dart';
import 'package:barbar_app/view/screesns/salons_details/inner_widget/salon_info.dart';
import 'package:barbar_app/view/screesns/salons_details/inner_widget/salon_reviews.dart';
import 'package:barbar_app/view/widgets/app_bar/custom_app_bar.dart';
import 'package:barbar_app/view/widgets/grid_card/custom_grid_card.dart';
import 'package:barbar_app/view/widgets/image/custom_image.dart';
import 'package:barbar_app/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SalonsDetailsScreen extends StatefulWidget {
  const SalonsDetailsScreen({super.key});

  @override
  State<SalonsDetailsScreen> createState() => _SalonsDetailsScreenState();
}

class _SalonsDetailsScreenState extends State<SalonsDetailsScreen> {
  bool salonInfo = false;
  bool salonService = false;
  bool salonReview = false;
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
                  text: "Salon Details",
                  fontSize: 18.sp,
                  color: AppColors.purple_100),
              SizedBox(height: 42.h, width: 42.w)
            ],
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
          physics: const ClampingScrollPhysics(),
          child: Column(
            children: [
              Container(
                width: width.w,
                height: 200.h,
                margin: EdgeInsets.only(bottom: 24.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  image: const DecorationImage(
                      image: AssetImage(AppImages.banner), fit: BoxFit.fill),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomText(
                      text: "NYC Salon",
                      fontSize: 24.sp,
                      color: AppColors.purple_100,
                      fontWeight: FontWeight.w700),
                  Row(
                    children: [
                      CustomImage(imageSrc: AppIcons.star, size: 14.h),
                      CustomText(text: "(4.5)", fontSize: 16.sp, left: 4.w),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 24.h),
              GestureDetector(
                onTap: () {
                  setState(() {
                    salonInfo = !salonInfo;
                  });
                },
                child: Container(
                  width: width,
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                  decoration: BoxDecoration(
                    color: AppColors.purple_10,
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                          text: "Salon Information",
                          fontSize: 18.sp,
                          color: AppColors.purple_100,
                          fontWeight: FontWeight.w600),
                      Icon(
                          salonInfo == true
                              ? Icons.keyboard_arrow_up
                              : Icons.keyboard_arrow_down,
                          size: 24.h,
                          color: AppColors.purple_100)
                    ],
                  ),
                ),
              ),
              salonInfo == true ? const SalonInfo() : const SizedBox(),
              SizedBox(height: 24.h),
              GestureDetector(
                onTap: () {
                  setState(() {
                    salonService = !salonService;
                  });
                },
                child: Container(
                  width: width,
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                  decoration: BoxDecoration(
                    color: AppColors.purple_10,
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                          text: "Salon Services",
                          fontSize: 18.sp,
                          color: AppColors.purple_100,
                          fontWeight: FontWeight.w600),
                      Icon(
                          salonService == true
                              ? Icons.keyboard_arrow_up
                              : Icons.keyboard_arrow_down,
                          size: 24.h,
                          color: AppColors.purple_100)
                    ],
                  ),
                ),
              ),
              salonService == true
                  ? CustomGridCard(
                      physics: const NeverScrollableScrollPhysics(),
                      data: data,
                      borderWidth: 1.w,
                      marginHorizontal: 8.w,
                      maxLines: 2,
                      imageHeight: 50.h,
                      imageWidth: 50.w,
                      mainAxisSpacing: 8.w,
                      crossAxisSpacing: 8.h,
                      mainAxisExtent: 90.h,
                      cardBorderColor: AppColors.purple_10,
                      paddingHorizontal: 8.w,
                      paddingVertical: 16.h,
                    )
                  : const SizedBox(),
              SizedBox(height: 24.h),
              GestureDetector(
                onTap: () {
                  setState(() {
                    salonReview = !salonReview;
                  });
                },
                child: Container(
                  width: width,
                  padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                  decoration: BoxDecoration(
                    color: AppColors.purple_10,
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                          text: "Salon Reviews",
                          fontSize: 18.sp,
                          color: AppColors.purple_100,
                          fontWeight: FontWeight.w600),
                      Icon(
                          salonReview == true
                              ? Icons.keyboard_arrow_up
                              : Icons.keyboard_arrow_down,
                          size: 24.h,
                          color: AppColors.purple_100)
                    ],
                  ),
                ),
              ),
              salonReview == true ? const SalonReviews() : const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
