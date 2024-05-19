import 'package:barbar_app/utils/colors/app_colors.dart';
import 'package:barbar_app/utils/icons/app_icons.dart';
import 'package:barbar_app/utils/images/app_images.dart';
import 'package:barbar_app/view/widgets/image/custom_image.dart';
import 'package:barbar_app/view/widgets/text/custom_row_text.dart';
import 'package:barbar_app/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppointmentCard extends StatelessWidget {
  const CustomAppointmentCard({super.key, this.onTap});
  final VoidCallback ? onTap;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    var width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
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
                Container(
                  height: 50.h,width: 50.w,
                  margin: EdgeInsets.only(right: 16.w),
                  decoration: BoxDecoration(
                      image: const DecorationImage(image: AssetImage(AppImages.banner),fit: BoxFit.fill),
                      borderRadius: BorderRadius.circular(4.r)
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(text: "NYC Salon", fontSize: 18.sp, fontWeight: FontWeight.w600, color: AppColors.purple_100,bottom: 8.h),
                    Row(
                      children: [
                        CustomImage(imageSrc: AppIcons.star, size: 14.h),
                        CustomText(text: "(4.5)", fontSize: 12.sp, left: 4.w),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 12.h),
            CustomRowText(title: "Appointment ID", titleTextSize: 14.sp,
                titleFW: FontWeight.w600, titleColor: AppColors.purple_100,
                subTitle: "112233", subTitleColor: AppColors.white_10, vertical: 4.h),
            CustomRowText(title: "Date", titleTextSize: 14.sp,
                titleFW: FontWeight.w600, titleColor: AppColors.purple_100,
                subTitle: "26/11/2023", subTitleColor: AppColors.white_10, vertical: 4.h),
            CustomRowText(title: "Time", titleTextSize: 14.sp,
                titleFW: FontWeight.w600, titleColor: AppColors.purple_100,
                subTitle: "10:00 am", subTitleColor: AppColors.white_10, vertical: 4.h),
            CustomRowText(title: "Services", titleTextSize: 14.sp,
                titleFW: FontWeight.w600, titleColor: AppColors.purple_100,
                subTitle: "Heir Style", subTitleColor: AppColors.white_10, vertical: 4.h),
            CustomRowText(title: "Total Amount", titleTextSize: 14.sp,
                titleFW: FontWeight.w600, titleColor: AppColors.purple_100,
                subTitle: "\$300", subTitleColor: AppColors.white_10, vertical: 4.h),
            CustomRowText(title: "Booking Amount", titleTextSize: 14.sp,
                titleFW: FontWeight.w600, titleColor: AppColors.purple_100,
                subTitle: "\$100", subTitleColor: AppColors.white_10, vertical: 4.h),
          ],
        ),
      ),
    );
  }
}
