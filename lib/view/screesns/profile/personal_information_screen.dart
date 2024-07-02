import 'package:barbar_app/core/route/app_route.dart';
import 'package:barbar_app/utils/colors/app_colors.dart';
import 'package:barbar_app/utils/icons/app_icons.dart';
import 'package:barbar_app/utils/images/app_images.dart';
import 'package:barbar_app/view/screesns/profile/inner_widgets/profile_card.dart';
import 'package:barbar_app/view/widgets/app_bar/custom_app_bar.dart';
import 'package:barbar_app/view/widgets/button/custom_button.dart';
import 'package:barbar_app/view/widgets/text/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PersonalInformationScreen extends StatelessWidget {
  const PersonalInformationScreen({super.key});

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
                text: "Personal Information",
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 100.h,
                width: 100.w,
                alignment: Alignment.bottomRight,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: AppColors.purple_60, width: 1.w),
                  image: const DecorationImage(
                    image: AssetImage(AppImages.profile),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Stack(
                  children: [
                    Container(
                      height: 32.h,
                      width: 32.w,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.purple_60,
                      ),
                      child: Icon(
                        Icons.camera_alt_outlined,
                        size: 18.h,
                        color: AppColors.white_100,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24.h),
              Divider(height: 1.h, color: AppColors.purple_60),
              SizedBox(height: 24.h),
              const ProfileCard(
                imageSrc: AppIcons.user,
                title: "John Doe",
                isIcon: false,
              ),
              SizedBox(height: 16.h),
              const ProfileCard(
                imageSrc: AppIcons.dob,
                title: "12 Jan 1999",
                isIcon: false,
              ),
              SizedBox(height: 16.h),
              const ProfileCard(
                imageSrc: AppIcons.gender,
                title: "Male",
                isIcon: false,
              ),
              SizedBox(height: 16.h),
              const ProfileCard(
                imageSrc: AppIcons.phone,
                title: "+1 3545 36464",
                isIcon: false,
              ),
              SizedBox(height: 16.h),
              const ProfileCard(
                imageSrc: AppIcons.email,
                title: "john.doe@gmail.com",
                isIcon: false,
              ),
              SizedBox(height: 16.h),
              const ProfileCard(
                imageSrc: AppIcons.location,
                title: "12 street, California, USA",
                isIcon: false,
              ),
              SizedBox(height: 24.h),
              CustomElevatedButton(
                onPressed: () {
                  Get.offAndToNamed(AppRoute.editProfile);
                },
                titleText: "Edit Profile",
                buttonWidth: MediaQuery.of(context).size.width,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
