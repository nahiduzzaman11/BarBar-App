import 'package:barbar_app/core/route/app_route.dart';
import 'package:barbar_app/utils/colors/app_colors.dart';
import 'package:barbar_app/view/screesns/my_cart/inner_widget/order_summary.dart';
import 'package:barbar_app/view/widgets/app_bar/custom_app_bar.dart';
import 'package:barbar_app/view/widgets/text/custom_row_text.dart';
import 'package:barbar_app/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({super.key});

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  bool clicked = false;
  bool click = false;
  int select = 1;

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
                  text: "Checkout",
                  fontSize: 18.sp,
                  color: AppColors.purple_100),
              SizedBox(height: 42.h, width: 42.w)
            ],
          ),
        ),
        body: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const OrderSummary(),
              Container(
                width: width,
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 16.h),
                margin: EdgeInsets.only(bottom: 24.h),
                decoration: BoxDecoration(
                  color: AppColors.purple_10,
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                        text: "Delivery Date",
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        bottom: 16.h),
                    CustomRowText(
                        title: "Possible Date",
                        titleFW: FontWeight.w500,
                        titleTextSize: 14.sp,
                        vertical: 0.h,
                        subTitleFW: FontWeight.w500,
                        subTitle: "28 Nov - 30 Nov",
                        subTitleTextSize: 14.sp,
                        subTitleColor: AppColors.white_10),
                  ],
                ),
              ),
              Container(
                width: width,
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 16.h),
                decoration: BoxDecoration(
                  color: AppColors.purple_10,
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          clicked = !clicked;
                        });
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                              text: "Payment Method",
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600),
                          Icon(
                              clicked == true
                                  ? Icons.keyboard_arrow_up
                                  : Icons.keyboard_arrow_down,
                              size: 24.h,
                              color: AppColors.white_10)
                        ],
                      ),
                    ),
                    clicked == true
                        ? ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: 2,
                            itemBuilder: (context, index) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 24.h),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            select = index;
                                          });
                                        },
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: 20.h,
                                              width: 20.w,
                                              decoration: BoxDecoration(
                                                color: AppColors.white_100,
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                    color: AppColors.purple_100,
                                                    width: 1.w),
                                              ),
                                              child: Container(
                                                margin: EdgeInsets.all(2.h),
                                                decoration: BoxDecoration(
                                                  color: select == index
                                                      ? AppColors.purple_100
                                                      : AppColors.white_100,
                                                  shape: BoxShape.circle,
                                                ),
                                              ),
                                            ),
                                            CustomText(
                                                text: "Cash",
                                                fontWeight: FontWeight.w600,
                                                left: 16.w)
                                          ],
                                        ),
                                      ),
                                      const CustomText(
                                          text: "\$630",
                                          fontWeight: FontWeight.w600)
                                    ],
                                  ),
                                ],
                              );
                            },
                          )
                        : const SizedBox(),
                  ],
                ),
              ),
              SizedBox(height: 16.h),
              clicked == true ? Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        click = !click;
                      });
                    },
                    child: Container(
                      height: 20.h,width: 20.w,
                      decoration: BoxDecoration(
                          color: click == true? AppColors.purple_100 : AppColors.white_100,
                          borderRadius: BorderRadius.circular(4.r),
                          border: Border.all(color: click == true? Colors.transparent : AppColors.purple_100)
                      ),
                      child: Icon(Icons.check,color: AppColors.white_100 , size: 14.h),
                    ),
                  ),
                  Flexible(child: CustomText(text: "By completing this order, I agree to all terms of services.",
                      fontSize: 12.sp,color: AppColors.purple_100, left: 10.w,maxLines: 2,textAlign: TextAlign.start),
                  ),
                ],
              ) : const SizedBox(),
              Container(
                height: 52.h,
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
                margin: EdgeInsets.only(top: 24.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.r),
                  color: AppColors.purple_100,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomText(
                            text: "Total",
                            fontSize: 12.sp,
                            color: AppColors.white_100,
                            right: 4.w),
                        CustomText(
                            text: "\$620",
                            fontSize: 18.sp,
                            color: AppColors.white_100),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(AppRoute.addPaymentScreen);
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(left: 24.w),
                        decoration: BoxDecoration(
                          color: AppColors.white_100,
                          borderRadius: BorderRadius.circular(25.r),
                        ),
                        child: const CustomText(
                            text: "Place Order", fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
