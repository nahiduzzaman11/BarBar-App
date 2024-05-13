import 'package:barbar_app/utils/colors/app_colors.dart';
import 'package:barbar_app/utils/icons/app_icons.dart';
import 'package:barbar_app/utils/images/app_images.dart';
import 'package:barbar_app/view/widgets/image/custom_image.dart';
import 'package:barbar_app/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SalonReviews extends StatelessWidget {
  const SalonReviews({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Container(
      padding: EdgeInsets.only(left: 8.w, right: 8.w, top: 16.h),
      margin: EdgeInsets.symmetric(horizontal: 8.w),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.purple_10, width: 1.w),
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(8.r),
          bottomLeft: Radius.circular(8.r),
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              CustomText(
                text: "4.5",
                fontSize: 30.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.purple_100,
                right: 8.w,
              ),
              Flexible(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        CustomText(text: "5", right: 8.w),
                        Flexible(
                          child: LinearProgressIndicator(
                            minHeight: 8.h,
                            backgroundColor: AppColors.purple_20,
                            color: AppColors.purple_100,
                            value: 0.9,
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 5,
            itemBuilder: (context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 30.h,
                            width: 30.w,
                            margin: EdgeInsets.only(right: 8.w),
                            decoration: BoxDecoration(
                              image: const DecorationImage(image: AssetImage(AppImages.banner), fit: BoxFit.fill),
                              border: Border.all(color: AppColors.purple_100, width: 1.w),
                              shape: BoxShape.circle,
                            ),
                          ),
                          const CustomText(text: "Mike"),
                        ],
                      ),
                      Row(
                        children: [
                          CustomImage(imageSrc: AppIcons.star, size: 14.h),
                          CustomText(text: "(4.5)", left: 8.w),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 16.h),
                  const CustomText(
                      text: "Lorem ipsum dolor sit amet consectetur. Proin ut malesuada aliquet erat malesuada donec risus quis.",
                      maxLines: 3,
                      textAlign: TextAlign.start),
                  SizedBox(height: 8.h),
                  CustomText(text: "11 Nov, 2023", fontSize: 12.sp, color: AppColors.purple_60),
                  SizedBox(height: 16.h)
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
