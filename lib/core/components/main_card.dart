import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    super.key,
    this.borderRadius = 12,
    this.horizontalPadding = 37,
    this.verticalPadding = 15,
    required this.child,
  });
  final double borderRadius;
  final double verticalPadding;
  final double horizontalPadding;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: verticalPadding,
        horizontal: horizontalPadding,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius.r),
        border: Border.all(color: AppColors.txtFieldStrokeColor, width: 1.r),
      ),
      child: child,
    );
  }
}
