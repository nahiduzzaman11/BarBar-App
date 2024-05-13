import 'package:barbar_app/core/route/app_route.dart';
import 'package:barbar_app/utils/colors/app_colors.dart';
import 'package:barbar_app/utils/icons/app_icons.dart';
import 'package:barbar_app/view/widgets/app_bar/custom_app_bar.dart';
import 'package:barbar_app/view/widgets/image/custom_image.dart';
import 'package:barbar_app/view/widgets/salon_card/custom_salon_card.dart';
import 'package:barbar_app/view/widgets/text/custom_text.dart';
import 'package:barbar_app/view/widgets/textfield/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SalonsScreen extends StatelessWidget {
  const SalonsScreen({super.key});

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
          appBarContent: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: SizedBox(
                  height: 42.h,width: 42.w,
                    child: Icon(Icons.arrow_back_ios, size: 20.h, color: AppColors.white_10),
                ),
              ),
              CustomText(text: "Salons",fontSize: 18.sp,color: AppColors.purple_100),
              SizedBox(height: 42.h,width: 42.w)
            ],
          ),
        ),
        body: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
          child: Column(
            children: [
              CustomTextField(
                hintText: "Search salons",
                hintStyle: GoogleFonts.lato(color: AppColors.white_40, fontSize: 16.sp),
                textInputAction: TextInputAction.done,
                prefixIcon: CustomImage(
                    imageSrc: AppIcons.search,
                    imageType: ImageType.png,
                    size: 18.h,
                    imageColor: AppColors.white_40),
              ),
              SizedBox(height: 16.h),
              ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return CustomSalonCard(
                    width: MediaQuery.of(context).size.width,
                    onTap: () => Get.toNamed(AppRoute.salonDetailsScreen),
                    bottom: 16.h,
                    title: "Downtown Salon",
                    subTitle: "#1",
                    address: "12 street, California, USA",
                    review: "4.5",
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
