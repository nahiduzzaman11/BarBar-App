import 'package:barbar_app/utils/colors/app_colors.dart';
import 'package:barbar_app/view/screesns/history/inner_widgets/appointment_history.dart';
import 'package:barbar_app/view/screesns/history/inner_widgets/order_history.dart';
import 'package:barbar_app/view/widgets/app_bar/custom_app_bar.dart';
import 'package:barbar_app/view/widgets/tab_bar/custom_tab_bar.dart';
import 'package:barbar_app/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  int _selectedIndex = 1;

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
                text: "History",
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
              CustomTab(
                titles: const ['Appointment History', 'Order History'],
                onTabSelected: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                selectedIndex: _selectedIndex,
              ),
              _selectedIndex == 1
                  ? ListView.builder(
                      shrinkWrap: true,
                      itemCount: 3,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return const AppointmentHistory();
                      },
                    )
                  : ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return const OrderHistory();
                      },
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
