import 'package:finance_ui/core/styling/app_assets.dart';
import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class StatisticDate extends StatelessWidget {
  const StatisticDate({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Jan 28 - May 28, 2025',
          style: AppStyles.grey12medium.copyWith(fontSize: 14.sp),
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: BoxDecoration(
            color: AppColors.lightPurple,
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Row(
            children: [
              Text(
                'Monthly',
                style: AppStyles.bottomNvBarActive.copyWith(fontSize: 14.sp),
              ),
              SizedBox(width: 4.w),
              SvgPicture.asset(AppAssets.arrow),
            ],
          ),
        ),
      ],
    );
  }
}
