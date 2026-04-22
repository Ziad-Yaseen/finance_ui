import 'package:finance_ui/core/components/custom_text_field.dart';
import 'package:finance_ui/core/components/primary_b_t_n.dart';
import 'package:finance_ui/core/routing/app_routes.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:finance_ui/features/auth/components/app_back_button.dart';
import 'package:finance_ui/features/auth/components/down_text.dart';
import 'package:finance_ui/features/auth/components/main_header_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final formKey = GlobalKey<FormState>();
  late TextEditingController emailController;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        left: false,
        bottom: false,
        right: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Form(
            key: formKey,
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
                CustomTextField(
                  hint: 'Enter your email',
                  controller: emailController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    if (!RegExp(
                      r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                    ).hasMatch(value)) {
                      return 'Please enter a valid email address';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 38.h),
                PrimaryBTN(
                  txt: 'Send Code',
                  onPressed: () {
                    if (formKey.currentState!.validate()) {}
                  },
                ),
                const Spacer(),
                DownText(
                  text1: 'Remember Password?',
                  text2: 'Login',
                  onPressed: () {
                    GoRouter.of(context).pushNamed(AppRoutes.registerScreen);
                  },
                ),

                SizedBox(height: 26.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
