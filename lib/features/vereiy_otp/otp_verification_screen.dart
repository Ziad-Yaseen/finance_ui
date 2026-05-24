import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:finance_ui/core/components/app_back_button.dart';
import 'package:finance_ui/features/auth/components/main_header_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OtpVerificationScreen extends StatelessWidget {
  const OtpVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        left: false,
        bottom: false,
        right: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBackButton(),
              SizedBox(height: 28.h),
              MainHeaderText('OTP Verification', width: 331),
              SizedBox(height: 10.h),
              Text(
                'Enter the verification code we just sent on your email address.',
                style: AppStyles.subtext,
              ),
              SizedBox(height: 32.h),

              SizedBox(height: 26.h),
            ],
          ),
        ),
      ),
    );
  }
}
