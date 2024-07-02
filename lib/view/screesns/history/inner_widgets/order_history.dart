import 'package:barbar_app/utils/colors/app_colors.dart';
import 'package:barbar_app/utils/icons/app_icons.dart';
import 'package:barbar_app/view/widgets/image/custom_image.dart';
import 'package:barbar_app/view/widgets/text/custom_row_text.dart';
import 'package:barbar_app/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderHistory extends StatelessWidget {
  const OrderHistory({super.key, this.onTap});

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    var width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onTap,
      child: Container(
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
                CustomImage(
                  imageSrc: AppIcons.appointment,
                  imageType: ImageType.svg,
                  imageColor: AppColors.purple_100,
                  size: 20.h,
                ),
                CustomText(
                  text: "11 Nov, 2023",
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.white_10,
                  left: 8.w,
                ),
              ],
            ),
            CustomText(
              text: "Order Summary",
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.white_10,
              top: 16.h,
              bottom: 16.h,
            ),
            CustomText(
              text: "Order ID #112233svd",
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.white_10,
              bottom: 12.h,
            ),
            CustomRowText(
              title: "1x Brush Set",
              titleTextSize: 14.sp,
              titleFW: FontWeight.w400,
              titleColor: AppColors.purple_100,
              subTitle: "\$120",
              subTitleColor: AppColors.white_10,
              vertical: 4.h,
            ),
            CustomRowText(
              title: "3x Hair Gel",
              titleTextSize: 14.sp,
              titleFW: FontWeight.w400,
              titleColor: AppColors.purple_100,
              subTitle: "\$300",
              subTitleColor: AppColors.white_10,
              vertical: 4.h,
            ),
            CustomRowText(
              title: "2x Shampoo",
              titleTextSize: 14.sp,
              titleFW: FontWeight.w400,
              titleColor: AppColors.purple_100,
              subTitle: "\$200",
              subTitleColor: AppColors.white_10,
              vertical: 4.h,
            ),
            SizedBox(height: 12.h),
            Divider(height: 1.h,color: AppColors.purple_100),
            SizedBox(height: 12.h),
            CustomRowText(
              title: "Total",
              titleTextSize: 14.sp,
              titleFW: FontWeight.w400,
              titleColor: AppColors.purple_100,
              subTitle: "\$630",
              subTitleColor: AppColors.white_10,
              vertical: 4.h,
            ),
          ],
        ),
      ),
    );
  }
}
