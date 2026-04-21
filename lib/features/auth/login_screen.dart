import 'package:finance_ui/core/components/custom_text_field.dart';
import 'package:finance_ui/core/routing/app_routes.dart';
import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/features/auth/components/app_back_button.dart';
import 'package:finance_ui/features/auth/components/login_with.dart';
import 'package:finance_ui/core/components/primary_b_t_n.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:finance_ui/features/auth/components/main_header_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool password = false;
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
              MainHeaderText('Welcome back! Again!'),
              SizedBox(height: 32.h),
              const CustomTextField(hint: 'Enter your email'),
              SizedBox(height: 15.h),
              CustomTextField(
                hint: 'Enter your password',
                password: password,
                showPasswordIcon: true,
                onPressed: () => setState(() {
                  password = !password;
                }),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  borderRadius: BorderRadius.circular(50),
                  overlayColor: WidgetStatePropertyAll(
                    AppColors.primaryColor.withValues(alpha: 0.1),
                  ),
                  onTap: () {
                    GoRouter.of(context).pushNamed(AppRoutes.forgetPassword);
                  },
                  child: Text(
                    'Forgot Password?',
                    style: AppStyles.forgotPasswordStyle,
                  ),
                ),
              ),
              SizedBox(height: 30.h),
              PrimaryBTN(txt: 'Login', onPressed: () {}),
              SizedBox(height: 35.h),
              LoginWith(
                onPressedFacebook: () {},
                onPressedGoogle: () {},
                onPressedApple: () {},
              ),
              const Spacer(),
              Center(
                child: RichText(
                  text: TextSpan(
                    text: 'Don\' have an account? ',
                    style: AppStyles.primaryHeadlineText.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                    children: [
                      TextSpan(
                        text: 'Register Now',
                        style: AppStyles.textStyle,
                      ),
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
