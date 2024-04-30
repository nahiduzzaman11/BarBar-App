import 'package:barbar_app/utils/colors/app_colors.dart';
import 'package:barbar_app/utils/icons/app_icons.dart';
import 'package:barbar_app/utils/images/app_images.dart';
import 'package:barbar_app/view/screesns/home/inner_widget/home_slider.dart';
import 'package:barbar_app/view/widgets/app_bar/custom_app_bar.dart';
import 'package:barbar_app/view/widgets/grid_card/custom_grid_card.dart';
import 'package:barbar_app/view/widgets/image/custom_image.dart';
import 'package:barbar_app/view/widgets/salon_card/custom_salon_card.dart';
import 'package:barbar_app/view/widgets/text/custom_row_text.dart';
import 'package:barbar_app/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> slider = [
    AppImages.banner,
    AppImages.banner,
    AppImages.banner,
    AppImages.banner,
    AppImages.banner
  ];
  final List<Map<String, String>> data = [
    {"image": AppImages.banner, "title": "Salon Salon Salon Salon Salon"},
    {"image": AppImages.banner, "title": "Salon"},
    {"image": AppImages.banner, "title": "Salon"},
    {"image": AppImages.banner, "title": "Salon"},
    {"image": AppImages.banner, "title": "Salon"},
    {"image": AppImages.banner, "title": "Salon"},
    {"image": AppImages.banner, "title": "Salon"},
    {"image": AppImages.banner, "title": "Salon"},
    {"image": AppImages.banner, "title": "Salon"}
  ];

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
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomImage(imageSrc: AppIcons.appIcon, size: 24.h),
                  SizedBox(width: 4.w),
                  CustomImage(imageSrc: AppIcons.appName, size: 84.h),
                ],
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: CustomImage(imageSrc: AppIcons.search, size: 20.h),
                  ),
                  SizedBox(width: 16.w),
                  GestureDetector(
                    onTap: () {},
                    child: CustomImage(imageSrc: AppIcons.bell, size: 20.h),
                  ),
                  SizedBox(width: 16.w),
                  GestureDetector(
                    onTap: () {},
                    child: CustomImage(imageSrc: AppImages.profile, size: 20.h),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          padding: EdgeInsetsDirectional.symmetric(horizontal: 24.w, vertical: 24.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                  text: "Hello, Smith",
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: AppColors.purple_100,
                  bottom: 8.h),
              CustomText(
                  text: "Welcome to BarBar",
                  color: AppColors.purple_100,
                  bottom: 16.h),
              HomeSlider(slider: slider),
              SizedBox(height: 8.h),
              const CustomRowText(title: "Available Services"),
              CustomGridCard(physics: const NeverScrollableScrollPhysics(), data: data),
              SizedBox(height: 8.h),
              const CustomRowText(title: "Salons"),
              SizedBox(
                height: 230.h,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return CustomSalonCard(
                      width: MediaQuery.of(context).size.width * 0.6,
                      title: "Downtown Salon",
                      subTitle: "#1",
                      address: "12 street, California, USA",
                      review: "4.5",
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
