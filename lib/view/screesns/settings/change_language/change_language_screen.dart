import 'package:barbar_app/utils/colors/app_colors.dart';
import 'package:barbar_app/view/widgets/app_bar/custom_app_bar.dart';
import 'package:barbar_app/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ChangeLanguageScreen extends StatefulWidget {
  const ChangeLanguageScreen({super.key});

  @override
  State<ChangeLanguageScreen> createState() => _ChangeLanguageScreenState();
}

class _ChangeLanguageScreenState extends State<ChangeLanguageScreen> {

  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        extendBody: true,
        backgroundColor: AppColors.white_100,
        appBar: CustomAppBar(
          spreadRadius: 0.r,
          appBarHeight: 64.h,
          appBarContent: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: SizedBox(
                  height: 42.h,
                  width: 42.w,
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 20.h,
                    color: AppColors.white_10,
                  ),
                ),
              ),
              CustomText(
                text: "Change Language",
                fontSize: 18.sp,
                color: AppColors.purple_100,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(height: 42.h, width: 42.w)
            ],
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
          physics: const ClampingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Radio(
                    value: 1,
                    activeColor: AppColors.purple_100,
                    groupValue: _value,
                    onChanged: (value) {
                      setState(() {
                        _value = value!;
                        Get.back();
                      });
                    },
                  ),
                  CustomText(
                    text: "English",
                    color: AppColors.white_10,
                    fontSize: 18.sp,
                  ),
                ],
              ),
              SizedBox(width: 8.w),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Radio(
                    value: 2,
                    activeColor: AppColors.purple_100,
                    groupValue: _value,
                    onChanged: (value) {
                      setState(() {
                        _value = value!;
                        Get.back();
                      });
                    },
                  ),
                  CustomText(
                    text: "Bengali",
                    color: AppColors.white_10,
                    fontSize: 18.sp,
                  ),
                ],
              ),
              SizedBox(width: 8.w),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Radio(
                    value: 3,
                    activeColor: AppColors.purple_100,
                    groupValue: _value,
                    onChanged: (value) {
                      setState(() {
                        _value = value!;
                        Get.back();
                      });
                    },
                  ),
                  CustomText(
                    text: "Others",
                    color: AppColors.white_10,
                    fontSize: 18.sp,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
