import 'package:finance_ui/core/components/primary_b_t_n.dart';
import 'package:finance_ui/core/routing/app_routes.dart';
import 'package:finance_ui/core/styling/app_assets.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:finance_ui/features/auth/components/main_header_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class PasswordChanged extends StatelessWidget {
  const PasswordChanged({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(AppAssets.success, width: 100.w, height: 100.w),
            SizedBox(height: 35.h),
            MainHeaderText('Password Changed'),
            SizedBox(height: 8.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                'Your password has been changed successfully.',
                textAlign: TextAlign.center,
                style: AppStyles.subtext,
              ),
            ),
            SizedBox(height: 40.h),
            PrimaryBTN(
              txt: 'Back to login',
              onPressed: () {
                GoRouter.of(context).pushNamed(AppRoutes.loginScreen);
              },
            ),
          ],
        ),
      ),
    );
  }
}
