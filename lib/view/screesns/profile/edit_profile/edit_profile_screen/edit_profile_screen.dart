import 'package:barbar_app/core/route/app_route.dart';
import 'package:barbar_app/utils/colors/app_colors.dart';
import 'package:barbar_app/utils/icons/app_icons.dart';
import 'package:barbar_app/view/widgets/app_bar/custom_app_bar.dart';
import 'package:barbar_app/view/widgets/button/custom_button.dart';
import 'package:barbar_app/view/widgets/image/custom_image.dart';
import 'package:barbar_app/view/widgets/text/custom_text.dart';
import 'package:barbar_app/view/widgets/textfield/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {

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
                text: "Edit Profile",
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
              CustomTextField(
                textInputAction: TextInputAction.next,
                hintText: "John Doe",
                hintStyle: GoogleFonts.lato(fontSize: 14.sp, color: AppColors.white_20),
                prefixIcon: const CustomImage(imageSrc: AppIcons.user, imageType: ImageType.svg, imageColor: AppColors.white_20),
              ),
              SizedBox(height: 16.h),
              CustomTextField(
                textInputAction: TextInputAction.next,
                hintText: "12 Jan 1999",
                hintStyle: GoogleFonts.lato(fontSize: 14.sp, color: AppColors.white_20),
                prefixIcon: const CustomImage(imageSrc: AppIcons.dob, imageType: ImageType.svg, imageColor: AppColors.white_20),
              ),
              SizedBox(height: 16.h),
              Row(
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
                          });
                        },
                      ),
                      CustomText(
                        text: "Male",
                        color: AppColors.white_10,
                        fontSize: 14.sp,
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
                          });
                        },
                      ),
                      CustomText(
                        text: "Female",
                        color: AppColors.white_10,
                        fontSize: 14.sp,
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
                          });
                        },
                      ),
                      CustomText(
                        text: "Other",
                        color: AppColors.white_10,
                        fontSize: 14.sp,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              CustomTextField(
                textInputAction: TextInputAction.next,
                hintText: "+1 3545 364664",
                hintStyle: GoogleFonts.lato(fontSize: 14.sp, color: AppColors.white_20),
                prefixIcon: const CustomImage(imageSrc: AppIcons.phone, imageType: ImageType.svg, imageColor: AppColors.white_20),
              ),
              SizedBox(height: 16.h),
              CustomTextField(
                textInputAction: TextInputAction.next,
                hintText: "john.doe@gmail.com",
                hintStyle: GoogleFonts.lato(fontSize: 14.sp, color: AppColors.white_20),
                prefixIcon: const CustomImage(imageSrc: AppIcons.email, imageType: ImageType.svg, imageColor: AppColors.white_20),
              ),
              SizedBox(height: 16.h),
              CustomTextField(
                textInputAction: TextInputAction.done,
                hintText: "12 street, California, USA",
                hintStyle: GoogleFonts.lato(fontSize: 14.sp, color: AppColors.white_20),
                prefixIcon: const CustomImage(imageSrc: AppIcons.location, imageType: ImageType.svg, imageColor: AppColors.white_20),
              ),
              SizedBox(height: 24.h),
              CustomElevatedButton(
                onPressed: () {
                  Get.offAndToNamed(AppRoute.editProfileValidation);
                },
                titleText: "Update",
                buttonWidth: MediaQuery.of(context).size.width,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
