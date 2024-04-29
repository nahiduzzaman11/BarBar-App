import 'package:barbar_app/utils/colors/app_colors.dart';
import 'package:barbar_app/utils/icons/app_icons.dart';
import 'package:barbar_app/view/screesns/appointment/appointment_screen.dart';
import 'package:barbar_app/view/screesns/home/home_screen.dart';
import 'package:barbar_app/view/screesns/profile/profile_screen.dart';
import 'package:barbar_app/view/screesns/search/search_screen.dart';
import 'package:barbar_app/view/widgets/image/custom_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavigationScreen extends StatefulWidget {
    NavigationScreen({Key? key, required this.selectedIndex}) : super(key: key);

  late int selectedIndex;

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  //int selectedIndex = 0;

  final List<Widget> screens = [
    const HomeScreen(),
    const SearchScreen(),
    const AppointmentScreen(),
    const ProfileScreen()
  ];

  final List<String> navBarIcons = [
    AppIcons.email,
    AppIcons.password,
    AppIcons.phone,
    AppIcons.email,
  ];

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    var width = MediaQuery.of(context).size.width;

    return SafeArea(
      top: true,
      child: Scaffold(
        extendBody: true,
        backgroundColor: AppColors.white_100,
        bottomNavigationBar: Container(
          width: width,
          margin: EdgeInsets.only(left: 20.w,right: 20.w,bottom: 14.h,top: 10.h),
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.purple_100,
              width: 1,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.circular(40.r),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: List.generate(
              navBarIcons.length,
                  (index) => GestureDetector(
                onTap: () {
                  setState(() {
                    widget.selectedIndex = index;
                  });
                },
                child: Container(
                  height: 42.h,
                  padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
                  decoration: BoxDecoration(
                    color: index == widget.selectedIndex ? AppColors.purple_100 : AppColors.white_100,
                    shape: BoxShape.circle,
                  ),
                  child: CustomImage(
                    imageSrc: navBarIcons[index],
                    imageType: ImageType.svg,
                    imageColor: index == widget.selectedIndex ? AppColors.white_100 : AppColors.purple_60,
                  ),
                ),
              ),
            ),
          ),
        ),
        body: screens[widget.selectedIndex],
      ),
    );
  }
}
