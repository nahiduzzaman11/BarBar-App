import 'package:barbar_app/utils/colors/app_colors.dart';
import 'package:barbar_app/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTab extends StatelessWidget {
  final List<String> titles;
  final Function(int) onTabSelected;
  final int selectedIndex;

  const CustomTab(
      {super.key,
      required this.titles,
      required this.onTabSelected,
      required this.selectedIndex
      });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      width: width,
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
      margin: EdgeInsets.only(bottom: 16.h),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: AppColors.purple_60, width: 1.w),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: List.generate(
          titles.length,
          (index) => _buildTab(
            titles[index],
            index + 1,
            width,
          ),
        ),
      ),
    );
  }

  Widget _buildTab(String title, int tabIndex, double width) {
    final bool isSelected = selectedIndex == tabIndex;

    return Flexible(
      child: GestureDetector(
        onTap: () {
          onTabSelected(tabIndex);
        },
        child: Container(
          width: width,
          padding: EdgeInsets.symmetric(vertical: 8.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: isSelected ? AppColors.purple_100 : Colors.white,
          ),
          child: CustomText(
            text: title, fontWeight: FontWeight.w600,
            color: isSelected ? AppColors.white_100 : AppColors.white_10,
            fontSize: 14.sp,
          ),
        ),
      ),
    );
  }
}
