import 'package:barbar_app/utils/colors/app_colors.dart';
import 'package:barbar_app/view/widgets/image/custom_image.dart';
import 'package:barbar_app/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard(
      {super.key,
      required this.imageSrc,
      required this.title,
      this.onTap,
      this.isIcon = true});

  final String imageSrc;
  final String title;
  final VoidCallback? onTap;
  final bool? isIcon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 4.w),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomImage(
                  imageSrc: imageSrc,
                  imageType: ImageType.svg,
                  size: 20.h,
                  imageColor: AppColors.purple_100,
                ),
                CustomText(
                  text: title,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.white_10,
                  left: 16.w,
                ),
              ],
            ),
            isIcon == true ? Icon(
              Icons.arrow_forward_ios_outlined,
              size: 20.h,
              color: AppColors.purple_100,
            ) : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
