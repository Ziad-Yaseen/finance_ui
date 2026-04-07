import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryBtn extends StatelessWidget {
  const PrimaryBtn({
    required this.txt,
    required this.onPressed,
    this.color = AppColors.primaryColor,
    this.width = 331,
    this.height = 56,
    this.borderRadius = 8,
    this.textColor = AppColors.whiteColor,
    this.fontSize = 15,
    super.key,
  });
  final String txt;
  final Color color;
  final double width;
  final double height;
  final double borderRadius;
  final VoidCallback onPressed;
  final Color textColor;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(borderRadius.r),
        ),
        fixedSize: Size(width.w, height.h),
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
