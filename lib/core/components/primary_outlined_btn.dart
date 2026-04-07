import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryOutlinedBtn extends StatelessWidget {
  const PrimaryOutlinedBtn({
    required this.txt,
    required this.onPressed,
    this.bordersColor = AppColors.primaryColor,
    this.width = 331,
    this.height = 56,
    this.borderRadius = 8,
    this.textColor = AppColors.primaryColor,
    this.fontSize = 15,
    this.bordersThickness = 1,
    super.key,
  });
  final String txt;
  final Color bordersColor;
  final double width;
  final double height;
  final double borderRadius;
  final VoidCallback onPressed;
  final Color textColor;
  final double fontSize;
  final double bordersThickness;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(borderRadius.r),
        ),
        fixedSize: Size(width.w, height.h),
        side: BorderSide(color: bordersColor, width: bordersThickness),
      ),
      onPressed: onPressed,
      child: Text(
        txt,
        style: TextStyle(
          color: textColor,
          fontSize: fontSize.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
