import 'package:barbar_app/utils/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget{

  final double appBarHeight;
  final double spreadRadius;
  final double? appBarWidth;
  final Color appBarBgColor;
  final Widget appBarContent;

  const CustomAppBar({

    this.appBarHeight = 64,
    this.spreadRadius = 10,
    this.appBarWidth,
    this.appBarBgColor = Colors.transparent,
    required this.appBarContent,
    super.key
  });

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  Size get preferredSize => Size(appBarWidth ?? double.infinity, appBarHeight);
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return PreferredSize(
      preferredSize: widget.preferredSize,
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(left: 20.w, top: 20.h, right: 20.w,bottom: 20.h),
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: widget.appBarBgColor,
          boxShadow: [
            BoxShadow(
              color: AppColors.white_80,
              blurStyle: BlurStyle.outer,
              spreadRadius: widget.spreadRadius.r,
              blurRadius: 10.r
            ),
          ],
        ),
        child: widget.appBarContent,
      ),
    );
  }
}