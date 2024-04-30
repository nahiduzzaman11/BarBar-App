import 'package:barbar_app/utils/colors/app_colors.dart';
import 'package:barbar_app/view/widgets/text/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRowText extends StatelessWidget {
  const CustomRowText(
      {super.key,
      required this.title,
      this.subTitle = "See all",
      this.titleTextSize = 18,
      this.gap = 16,
      this.subTitleTextSize = 14,
      this.titleFW = FontWeight.w600,
      this.subTitleFW = FontWeight.w500,
      this.titleColor = AppColors.white_10,
      this.subTitleColor = AppColors.purple_100,
      this.titleMaxLine = 1,
      this.subTitleMaxLine = 1,
      this.horizontal = 0,
      this.vertical = 16,
      this.titleOnTap,
      this.subOnTap,
      });

  final String title;
  final String subTitle;
  final double titleTextSize;
  final double gap;
  final double subTitleTextSize;
  final int titleMaxLine;
  final int subTitleMaxLine;
  final FontWeight titleFW;
  final FontWeight subTitleFW;
  final Color titleColor;
  final Color subTitleColor;
  final double horizontal;
  final double vertical;
  final VoidCallback? titleOnTap;
  final VoidCallback? subOnTap;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: GestureDetector(
              onTap: titleOnTap,
              child: CustomText(
                text: title,
                maxLines: titleMaxLine,
                fontWeight: titleFW,
                fontSize: titleTextSize,
                color: titleColor,
              ),
            ),
          ),
          SizedBox(width: gap.w),
          GestureDetector(
            onTap: subOnTap,
            child: CustomText(
              text: subTitle,
              fontWeight: subTitleFW,
              fontSize: subTitleTextSize,
              color: subTitleColor,
            ),
          ),
        ],
      ),
    );
  }
}
