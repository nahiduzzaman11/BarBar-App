import 'package:barbar_app/utils/colors/app_colors.dart';
import 'package:barbar_app/view/widgets/app_bar/custom_app_bar.dart';
import 'package:barbar_app/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SelectGenderScreen extends StatelessWidget {
  const SelectGenderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      top: true,
      child: Scaffold(
        extendBody: true,
        backgroundColor: AppColors.white_100,
        appBar: CustomAppBar(
          appBarContent: IconButton(
            icon: Icon(Icons.arrow_back_ios, size: 20.h, color: AppColors.white_10),
            onPressed: () {
              Get.back();
            },
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 24.h),
          physics: const BouncingScrollPhysics(),
          child: SizedBox(
            width: width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  text: "Select Your Gender",
                  fontSize: 24.sp,
                  color: AppColors.purple_100,
                  fontWeight: FontWeight.w600,
                  top: 24.h,
                  bottom: 24.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
