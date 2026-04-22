import 'package:finance_ui/core/components/custom_text_field.dart';
import 'package:finance_ui/core/components/primary_b_t_n.dart';
import 'package:finance_ui/core/routing/app_routes.dart';
import 'package:finance_ui/features/auth/components/app_back_button.dart';
import 'package:finance_ui/features/auth/components/down_text.dart';
import 'package:finance_ui/features/auth/components/login_with.dart';
import 'package:finance_ui/features/auth/components/main_header_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final formKey = GlobalKey<FormState>();
  late TextEditingController usernameController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;

  @override
  void initState() {
    super.initState();
    usernameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
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
                MainHeaderText('Hello! Register to get started', width: 331),
                SizedBox(height: 32.h),
                CustomTextField(
                  hint: 'Username',
                  controller: usernameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your username';
                    }
                    if (value.length < 3) {
                      return 'Username must be at least 3 characters long';
                    }
                    if (value.length > 20) {
                      return 'Username must be less than 20 characters long';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 12.h),
                CustomTextField(
                  hint: 'Email',
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
                SizedBox(height: 12.h),
                CustomTextField(
                  hint: 'Password',
                  controller: passwordController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    if (value.length < 8) {
                      return 'Password must be at least 8 characters long';
                    }
                    if (!RegExp(
                      r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$',
                    ).hasMatch(value)) {
                      return 'Password must contain at least one letter and one number';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 12.h),
                CustomTextField(
                  hint: 'Confirm Password',
                  controller: confirmPasswordController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please confirm your password';
                    }
                    if (value != passwordController.text) {
                      return 'Passwords do not match';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 30.h),
                PrimaryBTN(
                  txt: 'Register',
                  onPressed: () {
                    if (formKey.currentState!.validate()) {}
                  },
                ),
                SizedBox(height: 35.h),
                LoginWith(
                  text: 'Or Register With',
                  onPressedFacebook: () {},
                  onPressedGoogle: () {},
                  onPressedApple: () {},
                ),
                const Spacer(),
                DownText(
                  text1: 'Already have an account? ',
                  text2: 'Login Now',
                  onPressed: () {
                    GoRouter.of(context).pushNamed(AppRoutes.loginScreen);
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
