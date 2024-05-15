import 'package:barbar_app/utils/colors/app_colors.dart';
import 'package:barbar_app/view/widgets/text/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DeletePopUp extends StatelessWidget {
  const DeletePopUp({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    var width = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              backgroundColor: AppColors.white_100,
              contentPadding: EdgeInsets.symmetric(horizontal: 0.w, vertical: 0.h),
              content: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
                physics: const ClampingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomText(
                        text: "Do you want to clear your cart?",
                        fontSize: 16.sp,
                        color: AppColors.purple_100,
                        fontWeight: FontWeight.w600,
                        bottom: 24.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                          child: GestureDetector(
                            onTap: () => Get.back(),
                            child: Container(
                              width: width,
                              height: 36.h,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: AppColors.white_100,
                                borderRadius: BorderRadius.circular(25.r),
                                border: Border.all(color: AppColors.purple_100, width: 1.w),
                              ),
                              child: const CustomText(
                                  text: "Yes", color: AppColors.purple_100),
                            ),
                          ),
                        ),
                        SizedBox(width: 24.w),
                        Flexible(
                          child: GestureDetector(
                            onTap: () => Get.back(),
                            child: Container(
                              width: width,
                              height: 36.h,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: AppColors.purple_100,
                                borderRadius: BorderRadius.circular(25.r),
                              ),
                              child: const CustomText(
                                  text: "No", color: AppColors.white_100),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          },
        );
      },
      child: SizedBox(
        height: 42.h,
        width: 42.w,
        child: Icon(CupertinoIcons.delete, color: AppColors.red_100, size: 18.h),
      ),
    );
  }
}
