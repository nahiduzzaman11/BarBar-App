import 'package:barbar_app/utils/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String titleText;
  final Color titleColor;
  final Color buttonColor;
  final double titleSize;
  final FontWeight titleWeight;
  final double buttonRadius;
  final double buttonHeight;
  final double? buttonWidth;
  final TextAlign textAlign;

  const CustomElevatedButton(
      {this.textAlign = TextAlign.center,
        required this.onPressed,
        required this.titleText,
        this.titleColor = AppColors.white_100,
        this.buttonColor = AppColors.purple_100,
        this.titleSize = 18,
        this.buttonRadius = 30,
        this.titleWeight = FontWeight.w600,
        this.buttonHeight = 42,
        this.buttonWidth,
        super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: buttonHeight,
      width: buttonWidth,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(buttonColor),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(buttonRadius),
            ),
          ),
          elevation: MaterialStateProperty.all(0),
        ),
        child: Text(
          titleText,
          textAlign: textAlign,
          style: GoogleFonts.lato(
              color: titleColor, fontSize: titleSize, fontWeight: titleWeight),
        ),
      ),
    );
  }
}