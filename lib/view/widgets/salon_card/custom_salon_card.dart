import 'package:barbar_app/utils/colors/app_colors.dart';
import 'package:barbar_app/utils/icons/app_icons.dart';
import 'package:barbar_app/utils/images/app_images.dart';
import 'package:barbar_app/view/widgets/image/custom_image.dart';
import 'package:barbar_app/view/widgets/text/custom_row_text.dart';
import 'package:barbar_app/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSalonCard extends StatelessWidget {
  const CustomSalonCard({
    super.key,
    required this.width,
    this.height = 134,
    this.image = AppImages.banner,
    this.padding = 8,
    this.borderRadius = 8,
    this.cardColor = AppColors.purple_10,
    this.titleColor = AppColors.purple_100,
    this.title = "Title",
    this.subTitle = "Subtitle",
    this.fontWidth = FontWeight.w600,
    this.textSize = 16,
    this.vertical = 8,
    this.right = 0,
    this.bottom = 0,
    this.address = "Address",
    this.review = "Review",
  });

  final double width;
  final double height;
  final double right;
  final double bottom;
  final String image;
  final double padding;
  final double borderRadius;
  final Color cardColor;
  final Color titleColor;
  final String title;
  final String subTitle;
  final FontWeight fontWidth;
  final double textSize;
  final double vertical;
  final String address;
  final String review;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Container(
      width: width.w,
      padding: EdgeInsets.all(padding.h),
      margin: EdgeInsets.only(right: right.w, bottom: bottom.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius.r),
        color: cardColor,
        border: Border.all(color: AppColors.purple_20,width: 1)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: width.w,
            height: height.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius.r),
              image: DecorationImage(image: AssetImage(image),fit: BoxFit.fill)
            ),
          ),
          CustomRowText(
            title: title,
            subTitle: subTitle,
            titleColor: titleColor,
            subTitleColor: titleColor,
            subTitleFW: fontWidth,
            titleFW: fontWidth,
            subTitleTextSize: textSize.sp,
            titleTextSize: textSize.sp,
            vertical: vertical.h,
            gap: 8.w,
          ),
          CustomText(text: address),
          SizedBox(height: 8.h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomImage(imageSrc: AppIcons.star, size: 14.h),
              CustomText(text: "($review)", left: 4.w, fontSize: 12.sp),
            ],
          ),
        ],
      ),
    );
  }
}
