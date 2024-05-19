import 'package:barbar_app/utils/colors/app_colors.dart';
import 'package:barbar_app/utils/icons/app_icons.dart';
import 'package:barbar_app/utils/images/app_images.dart';
import 'package:barbar_app/view/widgets/app_bar/custom_app_bar.dart';
import 'package:barbar_app/view/widgets/button/custom_button.dart';
import 'package:barbar_app/view/widgets/image/custom_image.dart';
import 'package:barbar_app/view/widgets/pop_up/custom_pop_up.dart';
import 'package:barbar_app/view/widgets/text/custom_row_text.dart';
import 'package:barbar_app/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AppointmentDetailsScreen extends StatelessWidget {
  const AppointmentDetailsScreen({super.key});

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
          spreadRadius: 0.r,
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
                  child: Icon(Icons.arrow_back_ios,
                      size: 20.h, color: AppColors.white_10),
                ),
              ),
              CustomText(
                  text: "Appointment Details",
                  fontSize: 18.sp,
                  color: AppColors.purple_100,
                  fontWeight: FontWeight.w600),
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
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 50.h,
                        width: 50.w,
                        margin: EdgeInsets.only(right: 16.w),
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage(AppImages.banner),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(4.r),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                              text: "NYC Salon",
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColors.purple_100,
                              bottom: 8.h),
                          Row(
                            children: [
                              CustomImage(imageSrc: AppIcons.star, size: 14.h),
                              CustomText(
                                  text: "(4.5)", fontSize: 12.sp, left: 4.w),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 44.h,
                          width: 44.w,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.purple_10,
                          ),
                          child: const CustomImage(
                              imageSrc: AppIcons.phone,
                              imageType: ImageType.svg,
                              imageColor: AppColors.purple_80),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 44.h,
                          width: 44.w,
                          margin: EdgeInsets.only(left: 16.w),
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.purple_10,
                          ),
                          child: const Icon(Icons.message_outlined,
                              color: AppColors.purple_80),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 12.h),
              CustomRowText(
                  title: "Appointment ID",
                  titleTextSize: 14.sp,
                  titleFW: FontWeight.w600,
                  titleColor: AppColors.purple_100,
                  subTitle: "112233",
                  subTitleColor: AppColors.white_10,
                  vertical: 4.h),
              CustomRowText(
                  title: "Address",
                  titleTextSize: 14.sp,
                  titleFW: FontWeight.w600,
                  titleColor: AppColors.purple_100,
                  subTitle: "123abc, street, USA",
                  subTitleColor: AppColors.white_10,
                  vertical: 4.h),
              CustomRowText(
                  title: "Contact",
                  titleTextSize: 14.sp,
                  titleFW: FontWeight.w600,
                  titleColor: AppColors.purple_100,
                  subTitle: "+1 2345 54321",
                  subTitleColor: AppColors.white_10,
                  vertical: 4.h),
              CustomRowText(
                  title: "Date",
                  titleTextSize: 14.sp,
                  titleFW: FontWeight.w600,
                  titleColor: AppColors.purple_100,
                  subTitle: "26/11/2023",
                  subTitleColor: AppColors.white_10,
                  vertical: 4.h),
              CustomRowText(
                  title: "Time",
                  titleTextSize: 14.sp,
                  titleFW: FontWeight.w600,
                  titleColor: AppColors.purple_100,
                  subTitle: "10:00 am",
                  subTitleColor: AppColors.white_10,
                  vertical: 4.h),
              CustomRowText(
                  title: "Services",
                  titleTextSize: 14.sp,
                  titleFW: FontWeight.w600,
                  titleColor: AppColors.purple_100,
                  subTitle: "Heir Style",
                  subTitleColor: AppColors.white_10,
                  vertical: 4.h),
              CustomRowText(
                  title: "Total Amount",
                  titleTextSize: 14.sp,
                  titleFW: FontWeight.w600,
                  titleColor: AppColors.purple_100,
                  subTitle: "\$300",
                  subTitleColor: AppColors.white_10,
                  vertical: 4.h),
              CustomRowText(
                  title: "Booking Amount",
                  titleTextSize: 14.sp,
                  titleFW: FontWeight.w600,
                  titleColor: AppColors.purple_100,
                  subTitle: "\$100",
                  subTitleColor: AppColors.white_10,
                  vertical: 4.h),
              CustomRowText(
                  title: "Payment Method",
                  titleTextSize: 14.sp,
                  titleFW: FontWeight.w600,
                  titleColor: AppColors.purple_100,
                  subTitle: "Credit Card",
                  subTitleColor: AppColors.white_10,
                  vertical: 4.h),
            ],
          ),
        ),
        bottomNavigationBar: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                  text: "The booking amount will not be refunded after canceling your appointment.",
                  maxLines: 2,
                  textAlign: TextAlign.start,
                  fontSize: 12.sp,
                  color: AppColors.purple_60,
                  bottom: 16.h),
              CustomElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => const CustomPopUp(
                        title: "Do you want to cancel your appointment?",
                      ),
                    );
                  },
                  titleText: "Cancel Appointment",
                  buttonWidth: width),
            ],
          ),
        ),
      ),
    );
  }
}
