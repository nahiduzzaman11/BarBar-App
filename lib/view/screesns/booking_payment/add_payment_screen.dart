import 'package:barbar_app/core/route/app_route.dart';
import 'package:barbar_app/utils/colors/app_colors.dart';
import 'package:barbar_app/utils/icons/app_icons.dart';
import 'package:barbar_app/utils/images/app_images.dart';
import 'package:barbar_app/view/widgets/app_bar/custom_app_bar.dart';
import 'package:barbar_app/view/widgets/button/custom_button.dart';
import 'package:barbar_app/view/widgets/image/custom_image.dart';
import 'package:barbar_app/view/widgets/text/custom_text.dart';
import 'package:barbar_app/view/widgets/textfield/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AddPaymentScreen extends StatelessWidget {
  const AddPaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return SafeArea(
      top: true,
      child: Scaffold(
        extendBody: true,
        backgroundColor: AppColors.white_100,
        appBar: CustomAppBar(
          spreadRadius: 0.r,
          appBarHeight: 64.h,
          appBarContent: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: SizedBox(
                  height: 42.h,
                  width: 42.w,
                  child: Icon(Icons.arrow_back_ios,
                      size: 20.h, color: AppColors.white_10),
                ),
              ),
              CustomText(
                  text: "Add Payment Method",
                  fontSize: 18.sp,
                  color: AppColors.purple_100),
              SizedBox(height: 42.h, width: 42.w)
            ],
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
          physics: const ClampingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                  text: "Add payment method for order your favorite products.",
                  bottom: 16.h,
                  fontSize: 18.sp,
                  maxLines: 2,
                  textAlign: TextAlign.start,
                  fontWeight: FontWeight.w600),
              SizedBox(
                height: 72.h,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 72.h, width: 72.w,
                      margin: EdgeInsets.only(right: 16.w),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        image: const DecorationImage(image: AssetImage(AppImages.banner),fit: BoxFit.fill)
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 24.h),
              const CustomTextField(hintText: "Enter your account name",
              prefixIcon: CustomImage(imageSrc: AppIcons.user,imageType: ImageType.svg,imageColor: AppColors.white_20),),
              SizedBox(height: 24.h),
              const CustomTextField(hintText: "Enter your account number",
                prefixIcon: CustomImage(imageSrc: AppIcons.card,imageType: ImageType.svg,imageColor: AppColors.white_20),),
              SizedBox(height: 24.h),
              const CustomTextField(hintText: "Enter your card security code",
                prefixIcon: CustomImage(imageSrc: AppIcons.password,imageType: ImageType.svg,imageColor: AppColors.white_20),),
              SizedBox(height: 24.h),
              const CustomTextField(hintText: "Enter your card expire date", textInputAction: TextInputAction.done,
                prefixIcon: CustomImage(imageSrc: AppIcons.appointment,imageType: ImageType.svg,imageColor: AppColors.white_20),),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w,vertical: 16.h),
          child: CustomElevatedButton(onPressed: (){
            Get.toNamed(AppRoute.confirmAppointmentScreen);
          }, titleText: "Confirm Booking Appointment"),
        ),
      ),
    );
  }
}
