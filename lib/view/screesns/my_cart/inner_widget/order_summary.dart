import 'package:barbar_app/utils/colors/app_colors.dart';
import 'package:barbar_app/view/widgets/text/custom_row_text.dart';
import 'package:barbar_app/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderSummary extends StatelessWidget {
  const OrderSummary({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    var width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 16.h),
      margin: EdgeInsets.only(bottom: 24.h),
      decoration: BoxDecoration(
        color: AppColors.purple_10,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
              text: "Order Summary",
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              bottom: 8.h),
          CustomRowText(
              title: "Order ID",
              titleFW: FontWeight.w400,
              titleTextSize: 14.sp,
              vertical: 8.h,
              subTitleFW: FontWeight.w400,
              subTitle: "#25443acd",
              subTitleTextSize: 14.sp,
              subTitleColor: AppColors.white_10),
          CustomRowText(
              title: "Order From",
              titleFW: FontWeight.w400,
              titleTextSize: 14.sp,
              vertical: 8.h,
              subTitleFW: FontWeight.w400,
              subTitle: "Glory Salon",
              subTitleTextSize: 14.sp,
              subTitleColor: AppColors.white_10),
          CustomRowText(
              title: "Delivery Address",
              titleFW: FontWeight.w400,
              titleTextSize: 14.sp,
              vertical: 8.h,
              subTitleFW: FontWeight.w400,
              subTitle: "abc road, NYC",
              subTitleTextSize: 14.sp,
              subTitleColor: AppColors.white_10),
          CustomRowText(
              title: "Contact",
              titleFW: FontWeight.w400,
              titleTextSize: 14.sp,
              vertical: 8.h,
              subTitleFW: FontWeight.w400,
              subTitle: "+1 345 234 677",
              subTitleTextSize: 14.sp,
              subTitleColor: AppColors.white_10),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.h),
            child: Divider(
                height: 1.h,
                color: AppColors.purple_60,
                thickness: 1.h,
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 3,
            itemBuilder: (context, index) {
              return CustomRowText(
                  title: "1x Brush Set",
                  titleFW: FontWeight.w400,
                  titleTextSize: 14.sp,
                  vertical: 8.h,
                  subTitleFW: FontWeight.w400,
                  subTitle: "\$120    X",
                  subTitleTextSize: 14.sp,
                  subTitleColor: AppColors.white_10,
              );
            },
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.h),
            child: Divider(
                height: 1.h,
                color: AppColors.purple_60,
                thickness: 1.h,
            ),
          ),
          CustomRowText(
              title: "Subtotal",
              titleFW: FontWeight.w400,
              titleTextSize: 14.sp,
              vertical: 8.h,
              subTitleFW: FontWeight.w400,
              subTitle: "\$360",
              subTitleTextSize: 14.sp,
              subTitleColor: AppColors.white_10),
          SizedBox(height: 8.h),
          CustomRowText(
              title: "Delivery fee",
              titleFW: FontWeight.w400,
              titleTextSize: 14.sp,
              vertical: 0.h,
              subTitleFW: FontWeight.w400,
              subTitle: "\$10",
              subTitleTextSize: 14.sp,
              subTitleColor: AppColors.white_10),
        ],
      ),
    );
  }
}
