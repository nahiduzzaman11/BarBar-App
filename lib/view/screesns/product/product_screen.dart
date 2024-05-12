import 'package:barbar_app/utils/colors/app_colors.dart';
import 'package:barbar_app/view/widgets/app_bar/custom_app_bar.dart';
import 'package:barbar_app/view/widgets/product_card/custom_product_card.dart';
import 'package:barbar_app/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

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
              CustomText(text: "Products",fontSize: 18.sp,color: AppColors.purple_100),
              SizedBox(height: 42.h,width: 42.w)
            ],
          ),
        ),
        body: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 24.w,vertical: 24.h),
          child: Column(
            children: [
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 180.h,
                    mainAxisExtent: 170.h,
                    crossAxisSpacing: 16.w,
                    mainAxisSpacing: 16.h),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return CustomProductCard(
                    width: MediaQuery.of(context).size.width,
                    title: "Hair Gel",
                    review: "4.5",
                    price: "120",
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
