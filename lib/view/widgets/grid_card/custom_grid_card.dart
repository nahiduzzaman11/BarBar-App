import 'package:barbar_app/view/widgets/text/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomGridCard extends StatelessWidget {
  const CustomGridCard(
      {super.key,
      this.crossAxisCount = 4,
      this.crossAxisSpacing = 16,
      this.mainAxisSpacing = 16,
      this.mainAxisExtent = 110,
      this.childAspectRatio = 1,
      this.horizontal = 0,
      this.vertical = 0,
      this.itemOnTap,
      this.borderWidth = 0,
      required this.physics,
      required this.data,
      this.cardBorderColor = Colors.transparent,
      this.paddingHorizontal = 0,
      this.marginHorizontal = 0,
      this.imageHeight = 74,
      this.imageWidth = 74,
      this.maxLines = 1,
      this.paddingVertical = 0});

  final int crossAxisCount;
  final double crossAxisSpacing;
  final double mainAxisSpacing;
  final double imageHeight;
  final double imageWidth;
  final double mainAxisExtent;
  final double childAspectRatio;
  final ScrollPhysics physics;
  final double horizontal;
  final double vertical;
  final List<Map<String, String>> data;
  final VoidCallback? itemOnTap;
  final double paddingHorizontal;
  final double paddingVertical;
  final Color cardBorderColor;
  final double borderWidth;
  final double marginHorizontal;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: marginHorizontal.w),
      padding: EdgeInsets.symmetric(horizontal: paddingHorizontal.w, vertical: paddingVertical),
      decoration: BoxDecoration(
        border: Border.all(color: cardBorderColor, width: borderWidth),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(8.r),
          bottomRight: Radius.circular(8.r),
        ),
      ),
      child: GridView.builder(
        shrinkWrap: true,
        physics: physics,
        itemCount: data.length > 4 && data.length > 8
            ? 8 : data.length > 4 && data.length < 8
                ? 4 : data.length,
        padding: EdgeInsetsDirectional.symmetric(horizontal: horizontal, vertical: vertical),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: crossAxisSpacing.w,
            mainAxisSpacing: mainAxisSpacing.w,
            mainAxisExtent: mainAxisExtent,
            childAspectRatio: childAspectRatio),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: itemOnTap,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: imageHeight.h,
                  width: imageWidth.w,
                  margin: EdgeInsets.only(bottom: 4.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    image: DecorationImage(
                      image: AssetImage("${data[index]["image"]}"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                CustomText(text: "${data[index]["title"]}", fontSize: 12.sp,maxLines: maxLines)
              ],
            ),
          );
        },
      ),
    );
  }
}
