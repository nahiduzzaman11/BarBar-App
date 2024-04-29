import 'package:barbar_app/utils/colors/app_colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeSlider extends StatefulWidget {
  const HomeSlider({super.key, required this.slider});
  final List<String> slider;


  @override
  State<HomeSlider> createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CarouselSlider(
          items: widget.slider.map((item) {
            return Builder(
              builder: (BuildContext context) {
                return GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      image: DecorationImage(
                        image: AssetImage(item),
                        fit: BoxFit.fill,
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                );
              },
            );
          }).toList(),
          options: CarouselOptions(
            aspectRatio: 2.5,
            viewportFraction: 1,
            enlargeCenterPage: true,
            autoPlay: false,
            disableCenter: true,
            onPageChanged: (index, reason) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ),
        SizedBox(height: 16.h),
        DotsIndicator(
          dotsCount: widget.slider.length,
          position: currentIndex,
          decorator: DotsDecorator(
            color: AppColors.purple_60,
            size: Size(8.w, 8.h),
            activeColor: AppColors.purple_100,
            activeSize: Size(10.w, 10.h),
            spacing: EdgeInsets.all(4.w),
          ),
        ),
      ],
    );
  }
}
