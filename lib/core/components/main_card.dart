import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    super.key,
    this.borderRadius = 12,
    this.horizontalPadding = 37,
    this.verticalPadding = 15,
    this.onPressed,
    required this.child,
    this.bottomMargin = 0,
    this.leftMargin = 0,
    this.rightMargin = 0,
    this.topMargin = 0,
  });
  final double borderRadius;
  final double verticalPadding;
  final double horizontalPadding;
  final Widget child;
  final VoidCallback? onPressed;
  final double topMargin;
  final double bottomMargin;
  final double rightMargin;
  final double leftMargin;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      overlayColor: WidgetStatePropertyAll(
        AppColors.primaryColor.withValues(alpha: 0.05),
      ),
      borderRadius: BorderRadius.circular(borderRadius.r),
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.only(
          top: topMargin,
          bottom: bottomMargin,
          right: rightMargin,
          left: leftMargin,
        ),
        padding: EdgeInsets.symmetric(
          vertical: verticalPadding,
          horizontal: horizontalPadding,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius.r),
          border: Border.all(color: AppColors.txtFieldStrokeColor, width: 1.r),
        ),
        child: child,
      ),
    );
  }
}
