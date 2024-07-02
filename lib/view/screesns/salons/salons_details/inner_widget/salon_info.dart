import 'package:barbar_app/utils/colors/app_colors.dart';
import 'package:barbar_app/view/widgets/text/custom_row_text.dart';
import 'package:barbar_app/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SalonInfo extends StatelessWidget {
  const SalonInfo({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    var width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      padding: EdgeInsets.symmetric(horizontal: 8.w,vertical: 16.h),
      margin: EdgeInsets.symmetric(horizontal: 8.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(8.r),
            bottomRight: Radius.circular(8.r),
          ),
          border: Border.all(color: AppColors.purple_10,width: 1.w)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(text: "Address",fontSize: 18.sp,color: AppColors.purple_100,fontWeight: FontWeight.w600,bottom: 8.h),
          CustomText(text: "12abc street, California, USA",bottom: 16.h),

          CustomText(text: "Contact",fontSize: 18.sp,color: AppColors.purple_100,fontWeight: FontWeight.w600,bottom: 8.h),
          CustomText(text: "Contact number for booking +1 44454 56677.",bottom: 16.h, maxLines: 2,textAlign: TextAlign.start),

          CustomText(text: "Salon’s description",fontSize: 18.sp,color: AppColors.purple_100,fontWeight: FontWeight.w600,bottom: 8.h),
          CustomText(text: "Lorem ipsum dolor sit amet consectetur. Id sodales sapien scelerisque cursus vestibulum egestas. Gravida porttitor montes egestas mauris placerat. Condimentum iaculis diam enim lacus ut elementum tortor quis. Tempor iaculis pulvinar sed augue tristique nunc sit. Nunc feugiat eget enim duis. Amet cursus imperdiet proin nunc egestas gravida molestie adipiscing.",
              bottom: 16.h, maxLines: 7,textAlign: TextAlign.start),

          CustomText(text: "Service Hours",fontSize: 18.sp,color: AppColors.purple_100,fontWeight: FontWeight.w600,bottom: 8.h),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 7,
            itemBuilder: (context, index) {
              return CustomRowText(title: "Monday",titleTextSize: 14.sp,titleFW: FontWeight.w400, vertical: 8.h,
                  subTitle: "8:30 am - 8:30 pm",subTitleFW: FontWeight.w400,subTitleColor: AppColors.white_10);
            },
          ),
        ],
      ),
    );
  }
}
