import 'package:barbar_app/core/route/app_route.dart';
import 'package:barbar_app/utils/colors/app_colors.dart';
import 'package:barbar_app/utils/icons/app_icons.dart';
import 'package:barbar_app/utils/images/app_images.dart';
import 'package:barbar_app/view/screesns/profile/inner_widgets/profile_card.dart';
import 'package:barbar_app/view/widgets/app_bar/custom_app_bar.dart';
import 'package:barbar_app/view/widgets/pop_up/custom_pop_up.dart';
import 'package:barbar_app/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
          appBarContent: Align(
            alignment: Alignment.center,
            child: CustomText(
              text: "Profile",
              fontSize: 18.sp,
              color: AppColors.purple_100,
              fontWeight: FontWeight.w600,
            ),
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
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: AppColors.purple_60, width: 1.w),
                  image: const DecorationImage(
                    image: AssetImage(AppImages.profile),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              CustomText(
                text: "John Doe",
                top: 24.h,
                fontSize: 18.sp,
                color: AppColors.purple_100,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 24.h),
              Divider(height: 1.h, color: AppColors.purple_60),
              SizedBox(height: 24.h),
              ProfileCard(
                imageSrc: AppIcons.user,
                title: "Personal Information",
                onTap: () {
                  Get.toNamed(AppRoute.personalInfoScreen);
                },
              ),
              SizedBox(height: 16.h),
              const ProfileCard(
                  imageSrc: AppIcons.wishlist, title: "My Wishlist"),
              SizedBox(height: 16.h),
              const ProfileCard(imageSrc: AppIcons.cart, title: "My Cart"),
              SizedBox(height: 16.h),
              const ProfileCard(imageSrc: AppIcons.orders, title: "My Orders"),
              SizedBox(height: 16.h),
              const ProfileCard(
                  imageSrc: AppIcons.message, title: "Message To Admin"),
              SizedBox(height: 16.h),
              const ProfileCard(imageSrc: AppIcons.history, title: "History"),
              SizedBox(height: 16.h),
              ProfileCard(
                imageSrc: AppIcons.settings,
                title: "Settings",
                onTap: () {
                  Get.toNamed(AppRoute.settingsScreen);
                },
              ),
              SizedBox(height: 16.h),
              const ProfileCard(imageSrc: AppIcons.support, title: "Support"),
              SizedBox(height: 16.h),
              Divider(height: 1.h, color: AppColors.purple_100),
              SizedBox(height: 16.h),
              ProfileCard(
                imageSrc: AppIcons.logout,
                title: "Logout",
                isIcon: false,
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return const CustomPopUp(
                        title: "Do you want to logout your profile?",
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
