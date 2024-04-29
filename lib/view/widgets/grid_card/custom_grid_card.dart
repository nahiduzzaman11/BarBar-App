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
      required this.physics,
      required this.data});

  final int crossAxisCount;
  final double crossAxisSpacing;
  final double mainAxisSpacing;
  final double mainAxisExtent;
  final double childAspectRatio;
  final ScrollPhysics physics;
  final double horizontal;
  final double vertical;
  final List<Map<String, String>> data;
  final VoidCallback? itemOnTap;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return SizedBox(
      child: GridView.builder(
        shrinkWrap: true,
        physics: physics,
        itemCount: data.length > 4 && data.length > 8 ? 8 : data.length > 4 && data.length < 8 ? 4 : data.length,
        padding: EdgeInsetsDirectional.symmetric(horizontal: horizontal, vertical: vertical),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: crossAxisSpacing,
            mainAxisSpacing: mainAxisSpacing,
            mainAxisExtent: mainAxisExtent,
            childAspectRatio: childAspectRatio),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: itemOnTap,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 74.h,
                  width: 74.w,
                  margin: EdgeInsets.only(bottom: 4.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    image: DecorationImage(
                      image: AssetImage("${data[index]["image"]}"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                CustomText(text: "${data[index]["title"]}", fontSize: 12.sp)
              ],
            ),
          );
        },
      ),
    );
  }
}
