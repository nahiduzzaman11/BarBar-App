import 'package:barbar_app/utils/colors/app_colors.dart';
import 'package:barbar_app/view/widgets/text/custom_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductSlider extends StatefulWidget {
  const ProductSlider({super.key, required this.slider});
  final List<String> slider;

  @override
  State<ProductSlider> createState() => _ProductSliderState();
}

class _ProductSliderState extends State<ProductSlider> {

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
                    padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      image: DecorationImage(
                        image: AssetImage(item),
                        fit: BoxFit.fill,
                        alignment: Alignment.center,
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        height: 36.h,width: 135.w,
                        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
                        decoration: BoxDecoration(
                            color: AppColors.purple_100,
                            borderRadius: BorderRadius.circular(8.r)
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.favorite_border_outlined, color: AppColors.white_100,size: 18.h),
                            Flexible(child: CustomText(text: "Add to Wishlist",color: AppColors.white_100,left: 8.w))
                          ],
                        ),
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
