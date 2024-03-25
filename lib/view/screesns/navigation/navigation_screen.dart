import 'package:barbar_app/utils/colors/app_colors.dart';
import 'package:barbar_app/utils/icons/app_icons.dart';
import 'package:barbar_app/view/widgets/image/custom_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {

  bool isSelected = true;
  int selectedIndex = 0;
  final List<String> nevBar = [
    AppIcons.email,
    AppIcons.password,
    AppIcons.phone,
    AppIcons.email,
  ];

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      top: true,
      child: Scaffold(
        extendBody: true,
        backgroundColor: AppColors.white_100,
        bottomNavigationBar: Container(
          width: width,
          margin: EdgeInsets.symmetric(horizontal: 20.w,vertical: 24.h),
          padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
          decoration:BoxDecoration(
            border: Border.all(
              color: AppColors.purple_100,
              width: 1,style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.circular(40.r),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex == 0;
                  });
                },
                child: Container(
                  height: 42.h,
                  padding: EdgeInsets.symmetric(horizontal: 12.w,vertical: 12.h),
                  decoration: BoxDecoration(
                    color: selectedIndex == 0? AppColors.purple_100 : AppColors.white_100,
                    shape: BoxShape.circle
                  ),
                  child: CustomImage(
                    imageSrc: nevBar[0],imageType: ImageType.svg,
                    imageColor: selectedIndex == 0 ? AppColors.white_100 : AppColors.purple_60,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex == 1;
                  });
                },
                child: Container(
                  height: 42.h,
                  padding: EdgeInsets.symmetric(horizontal: 12.w,vertical: 12.h),
                  decoration: BoxDecoration(
                    color: selectedIndex == 1? AppColors.purple_100 : AppColors.white_100,
                    shape: BoxShape.circle
                  ),
                  child: CustomImage(
                    imageSrc: nevBar[1],imageType: ImageType.svg,
                    imageColor: selectedIndex == 1 ? AppColors.white_100 : AppColors.purple_60,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex == 2;
                  });
                },
                child: Container(
                  height: 42.h,
                  padding: EdgeInsets.symmetric(horizontal: 12.w,vertical: 12.h),
                  decoration: BoxDecoration(
                    color: selectedIndex == 2? AppColors.purple_100 : AppColors.white_100,
                    shape: BoxShape.circle
                  ),
                  child: CustomImage(
                    imageSrc: nevBar[2],imageType: ImageType.svg,
                    imageColor: selectedIndex == 2 ? AppColors.white_100 : AppColors.purple_60,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex == 3;
                  });
                },
                child: Container(
                  height: 42.h,
                  padding: EdgeInsets.symmetric(horizontal: 12.w,vertical: 12.h),
                  decoration: BoxDecoration(
                    color: selectedIndex == 3? AppColors.purple_100 : AppColors.white_100,
                    shape: BoxShape.circle
                  ),
                  child: CustomImage(
                    imageSrc: nevBar[3],imageType: ImageType.svg,
                    imageColor: selectedIndex == 3 ? AppColors.white_100 : AppColors.purple_60,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
