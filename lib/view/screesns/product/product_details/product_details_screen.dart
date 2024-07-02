import 'package:barbar_app/core/route/app_route.dart';
import 'package:barbar_app/utils/colors/app_colors.dart';
import 'package:barbar_app/utils/icons/app_icons.dart';
import 'package:barbar_app/utils/images/app_images.dart';
import 'package:barbar_app/view/screesns/product/inner_widget/product_slider.dart';
import 'package:barbar_app/view/screesns/salons/salons_details/inner_widget/salon_reviews.dart';
import 'package:barbar_app/view/widgets/app_bar/custom_app_bar.dart';
import 'package:barbar_app/view/widgets/image/custom_image.dart';
import 'package:barbar_app/view/widgets/text/custom_row_text.dart';
import 'package:barbar_app/view/widgets/text/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {

  final List<String> slider = [
    AppImages.banner,
    AppImages.banner,
    AppImages.banner,
    AppImages.banner,
    AppImages.banner
  ];
  int currentIndex = 0;
  int count = 1;

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
                  height: 42.h,width: 42.w,
                  child: Icon(Icons.arrow_back_ios, size: 20.h, color: AppColors.white_10),
                ),
              ),
              CustomText(text: "Product Details",fontSize: 18.sp,color: AppColors.purple_100),
              GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoute.myCartScreen);
                },
                child: SizedBox(
                  height: 42.h,width: 42.w,
                  child: const CustomImage(imageSrc: AppIcons.cart, imageType: ImageType.svg),
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProductSlider(slider: slider),
              SizedBox(height: 16.h),
              CustomRowText(title: "Hair Gel", titleTextSize: 24.sp,vertical: 8,
                  subTitle: "\$100",subTitleTextSize: 24.sp, subTitleFW: FontWeight.w600),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomImage(imageSrc: AppIcons.star,size: 14.h),
                  CustomText(text: "(4.5)",left: 4.w),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 16.h),
                margin: EdgeInsets.only(top: 24.h),
                width: width,
                decoration: BoxDecoration(
                  color: AppColors.purple_10,
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CustomText(text: "Total", color: AppColors.purple_60, right: 4.w),
                            CustomText(text: "\$100", color: AppColors.purple_100, fontSize: 18.sp),
                          ],
                        ),
                        SizedBox(height: 16.h),
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
                                height: 32.h, width: 32.w,
                                alignment: Alignment.center,
                                margin: EdgeInsets.only(right: 24.w),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: AppColors.purple_100, width: 1.w),
                                ),
                                child: const Icon(Icons.remove, color: AppColors.purple_100),
                              ),
                            ),
                            CustomText(text: "$count",fontSize: 18.sp, color: AppColors.purple_100),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  count = count + 1;
                                });
                              },
                              child: Container(
                                height: 32.h, width: 32.w,
                                alignment: Alignment.center,
                                margin: EdgeInsets.only(left: 24.w),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: AppColors.purple_100, width: 1.w),
                                ),
                                child: const Icon(Icons.add, color: AppColors.purple_100),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(AppRoute.myCartScreen);
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: AppColors.purple_100,
                          borderRadius: BorderRadius.circular(8.r)
                        ),
                        child: const CustomText(text: "Add to Cart",color: AppColors.white_100,fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
              CustomText(text: "Description",fontSize: 18.sp,color: AppColors.purple_100,
                    fontWeight: FontWeight.w600,top: 24.h,bottom: 16.h),
              CustomText(text: "Lorem ipsum dolor sit amet consectetur. Proin ut malesuada aliquet erat malesuada donec risus quis. Elementum gravida felis habitasse neque amet orci viverra. Orci felis sapien lacus cras. Tellus et ut porta netus amet euismod. Pharetra fermentum fusce enim eu.",
                  fontSize: 16.sp,bottom: 24.h, maxLines: 7, textAlign: TextAlign.start),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.w,vertical: 8.h),
                margin: EdgeInsets.only(bottom: 24.h),
                decoration: BoxDecoration(
                  color: AppColors.purple_10,
                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(color: AppColors.purple_20,width: 1.w)
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 70.h,width: 100.w,
                      margin: EdgeInsets.only(right: 8.w),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.r),
                        image: const DecorationImage(image: AssetImage(AppImages.banner),fit: BoxFit.fill)
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(text: "Glory Salon",fontSize: 16.sp,fontWeight: FontWeight.w600,bottom: 8.h, color: AppColors.purple_100),
                        CustomText(text: "12 street, California",bottom: 8.h,fontWeight: FontWeight.w500),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CustomImage(imageSrc: AppIcons.star,size: 14.h),
                            CustomText(text: "(4.5)",fontSize: 12.sp,left: 4.w)
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              CustomText(text: "Ratings & Top Reviews",fontSize: 18.sp,
                  color: AppColors.purple_100,fontWeight: FontWeight.w600),
              SalonReviews(
                marginHorizontal: 0.w,
                borderWidth: 0.w,
                borderColor: Colors.transparent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
