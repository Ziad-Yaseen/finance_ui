import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/core/styling/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyles {
  static TextStyle primaryHeadlineText = TextStyle(
    fontFamily: AppFonts.mainFont,
    fontSize: 30.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryColor
  );
  static TextStyle subtitle = TextStyle(
    fontFamily: AppFonts.mainFont,
    fontSize: 16.sp,
    fontWeight: FontWeight.normal,
    color: AppColors.secondaryColor
  );
  static TextStyle black16w600 = TextStyle(
    fontFamily: AppFonts.mainFont,
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.blackTxtColor,
  );
  static TextStyle grey12medium = TextStyle(
    fontFamily: AppFonts.mainFont,
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.greyColor,
  );
  static TextStyle textFieldStyle = TextStyle(
    fontFamily: AppFonts.mainFont,
    fontSize: 15.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.secondaryColor,
  );
  static TextStyle textStyle = TextStyle(
    fontFamily: AppFonts.mainFont,
    fontSize: 15.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.textColor,
  );
}