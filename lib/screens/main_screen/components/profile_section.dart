import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({
    super.key,
    this.space = 16,
    required this.title,
    required this.subtitle,
  });
  final int space;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: space.h),
        Text(title, style: AppStyles.grey12medium.copyWith(fontSize: 14.sp)),
        SizedBox(height: 16.h),
        Text(
          subtitle,
          style: AppStyles.bottomNvBarActive.copyWith(fontSize: 16.sp),
        ),
        SizedBox(height: 16.h),
        const Divider(color: AppColors.lightDivider),
      ],
    );
  }
}
