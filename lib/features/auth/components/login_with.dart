import 'package:finance_ui/core/components/main_card.dart';
import 'package:finance_ui/core/styling/app_assets.dart';
import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginWith extends StatelessWidget {
  const LoginWith({
    super.key,
    this.text = 'Or Login With',
    this.onPressedFacebook,
    this.onPressedApple,
    this.onPressedGoogle,
  });
  final String text;
  final VoidCallback? onPressedFacebook;
  final VoidCallback? onPressedGoogle;
  final VoidCallback? onPressedApple;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Divider(
                endIndent: 12.w,
                thickness: 1.sp,
                color: AppColors.txtFieldStrokeColor,
              ),
            ),
            Text('Or Login With', style: AppStyles.forgotPasswordStyle),
            Expanded(
              child: Divider(
                indent: 12.w,
                thickness: 1.sp,
                color: AppColors.txtFieldStrokeColor,
              ),
            ),
          ],
        ),
        SizedBox(height: 22.h),
        Row(
          children: [
            Expanded(
              child: MainCard(
                rightMargin: 4,
                onPressed: onPressedFacebook,
                child: SvgPicture.asset(
                  AppAssets.facebook,
                  width: 26.w,
                  height: 26.w,
                ),
              ),
            ),
            Expanded(
              child: MainCard(
                rightMargin: 4,
                leftMargin: 4,
                onPressed: onPressedGoogle,
                child: SvgPicture.asset(
                  AppAssets.google,
                  width: 26.w,
                  height: 26.w,
                ),
              ),
            ),
            Expanded(
              child: MainCard(
                leftMargin: 4,
                onPressed: onPressedApple,
                child: SvgPicture.asset(
                  AppAssets.apple,
                  width: 26.w,
                  height: 26.w,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
