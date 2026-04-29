import 'package:finance_ui/core/components/custom_text_field.dart';
import 'package:finance_ui/core/routing/app_routes.dart';
import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/features/auth/components/app_back_button.dart';
import 'package:finance_ui/features/auth/components/down_text.dart';
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
  final formKey = GlobalKey<FormState>();
  late TextEditingController emailController;
  late TextEditingController passwordController;
  bool password = false;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        left: false,
        bottom: false,
        right: false,
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraints.maxHeight),
                  child: IntrinsicHeight(
                    child: Form(
                      key: formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppBackButton(),
                          SizedBox(height: 28.h),
                          MainHeaderText('Welcome back! Again!'),
                          SizedBox(height: 32.h),
                          CustomTextField(
                            hint: 'Enter your email',
                            controller: emailController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your email';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 15.h),
                          CustomTextField(
                            controller: passwordController,
                            hint: 'Enter your password',
                            password: password,
                            showPasswordIcon: true,
                            onPressed: () => setState(() {
                              password = !password;
                            }),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your password';
                              }
                              if (value.length < 8) {
                                return 'Password must be at least 8 characters';
                              }
                              return null;
                            },
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(50),
                              overlayColor: WidgetStatePropertyAll(
                                AppColors.primaryColor.withValues(alpha: 0.1),
                              ),
                              onTap: () {
                                GoRouter.of(
                                  context,
                                ).pushNamed(AppRoutes.forgetPassword);
                              },
                              child: Text(
                                'Forgot Password?',
                                style: AppStyles.forgotPasswordStyle,
                              ),
                            ),
                          ),
                          SizedBox(height: 30.h),
                          PrimaryBTN(
                            txt: 'Login',
                            onPressed: () {
                              if (formKey.currentState!.validate()) {}
                            },
                          ),
                          SizedBox(height: 35.h),
                          LoginWith(
                            onPressedFacebook: () {},
                            onPressedGoogle: () {},
                            onPressedApple: () {},
                          ),
                          const Spacer(),
                          DownText(
                            text1: 'Don\' have an account? ',
                            text2: 'Register Now',
                            onPressed: () {
                              GoRouter.of(
                                context,
                              ).pushNamed(AppRoutes.registerScreen);
                            },
                          ),

                          SizedBox(height: 26.h),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
