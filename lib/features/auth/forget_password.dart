import 'package:finance_ui/core/components/custom_text_field.dart';
import 'package:finance_ui/core/components/primary_b_t_n.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:finance_ui/features/auth/components/app_back_button.dart';
import 'package:finance_ui/features/auth/components/main_header_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

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
              MainHeaderText('Forgot Password?', width: 331),
              SizedBox(height: 10.h),
              Text(
                'Don\'t worry! It occurs. Please enter the email address linked with your account.',
                style: AppStyles.subtext,
              ),
              SizedBox(height: 32.h),
              CustomTextField(hint: 'Enter your email'),
              SizedBox(height: 38.h),
              PrimaryBTN(txt: 'Send Code', onPressed: () {}),
              const Spacer(),
              Center(
                child: RichText(
                  text: TextSpan(
                    text: 'Remember Password?',
                    style: AppStyles.primaryHeadlineText.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                    children: [
                      TextSpan(text: 'Login', style: AppStyles.textStyle),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 26.h),
            ],
          ),
        ),
      ),
    );
  }
}
