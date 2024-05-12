import 'package:barbar_app/utils/colors/app_colors.dart';
import 'package:barbar_app/utils/icons/app_icons.dart';
import 'package:barbar_app/utils/images/app_images.dart';
import 'package:barbar_app/view/widgets/image/custom_image.dart';
import 'package:barbar_app/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomProductCard extends StatelessWidget {
  const CustomProductCard(
      {super.key,
      required this.width,
      this.height = 108,
      this.image = AppImages.banner,
      this.padding = 8,
      this.borderRadius = 8,
      this.cardColor = AppColors.purple_10,
      this.titleColor = AppColors.white_10,
      this.title = "Title",
      this.price = "Price",
      this.fontWidth = FontWeight.w600,
      this.titleSize = 18,

      this.review = "Review"});

  final double width;
  final double height;
  final String image;
  final double padding;
  final double borderRadius;
  final Color cardColor;

  final Color titleColor;
  final String title;
  final String price;
  final FontWeight fontWidth;
  final double titleSize;
  final String review;


  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Container(
      width: width.w,
      padding: EdgeInsets.all(padding.h),
      //margin: EdgeInsets.only(right: 16.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius.r),
        color: cardColor,
        border: Border.all(color: AppColors.purple_20, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: width.w,
            height: height.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(borderRadius.r),
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.fill)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                      text: title,
                      fontSize: titleSize.sp,
                      fontWeight: fontWidth,
                      color: titleColor),
                  SizedBox(height: 8.h),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomImage(
                          imageSrc: AppIcons.star,
                          size: 14.h,
                          imageColor: AppColors.purple_100),
                      CustomText(text: "($review)", left: 4.w, fontSize: 12.sp),
                    ],
                  ),
                ],
              ),
              SizedBox(width: 8.w),
              Flexible(
                child: CustomText(
                    text: "\$$price",
                    fontSize: 18.sp,
                    color: AppColors.purple_100,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
