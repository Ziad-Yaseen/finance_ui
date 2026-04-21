import 'package:finance_ui/core/components/custom_text_field.dart';
import 'package:finance_ui/core/components/primary_b_t_n.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:finance_ui/features/auth/components/app_back_button.dart';
import 'package:finance_ui/features/auth/components/login_with.dart';
import 'package:finance_ui/features/auth/components/main_header_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
              MainHeaderText('Hello! Register to get started', width: 331),
              SizedBox(height: 32.h),
              CustomTextField(hint: 'Username'),
              SizedBox(height: 12.h),
              CustomTextField(hint: 'Email'),
              SizedBox(height: 12.h),
              CustomTextField(hint: 'Password'),
              SizedBox(height: 12.h),
              CustomTextField(hint: 'Confirm Password'),
              SizedBox(height: 30.h),
              PrimaryBTN(txt: 'Register', onPressed: () {}),
              SizedBox(height: 35.h),
              LoginWith(
                text: 'Or Register With',
                onPressedFacebook: () {},
                onPressedGoogle: () {},
                onPressedApple: () {},
              ),
              const Spacer(),
              Center(
                child: RichText(
                  text: TextSpan(
                    text: 'Already have an account? ',
                    style: AppStyles.primaryHeadlineText.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                    children: [
                      TextSpan(text: 'Login Now', style: AppStyles.textStyle),
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
