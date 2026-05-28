import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ColoredContainerWithIcon extends StatelessWidget {
  const ColoredContainerWithIcon({super.key, required this.asset});
  final String asset;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      child: SvgPicture.asset(asset, width: 24.w, height: 24.w),
      decoration: BoxDecoration(
        color: AppColors.lightPrimary,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
