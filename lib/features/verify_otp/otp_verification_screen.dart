import 'package:finance_ui/core/components/primary_b_t_n.dart';
import 'package:finance_ui/core/routing/app_routes.dart';
import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:finance_ui/core/components/app_back_button.dart';
import 'package:finance_ui/features/auth/components/main_header_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  @override
  State<OtpVerificationScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<OtpVerificationScreen> {
  final formKey = GlobalKey<FormState>();
  late TextEditingController codeController;
  bool password = false;

  @override
  void initState() {
    super.initState();
    codeController = TextEditingController();
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
                          const AppBackButton(),
                          SizedBox(height: 28.h),
                          const MainHeaderText('OTP Verification', width: 331),
                          SizedBox(height: 10.h),
                          Text(
                            'Enter the verification code we just sent on your email address.',
                            style: AppStyles.subtext,
                          ),
                          SizedBox(height: 32.h),
                          MaterialPinField(
                            length: 4,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            theme: MaterialPinTheme(
                              filledFillColor: AppColors.whiteColor,
                              fillColor: AppColors.txtFieldFillColor,
                              borderColor: AppColors.txtFieldStrokeColor,
                              cursorColor: AppColors.primaryColor,
                              focusedFillColor: AppColors.primaryColor
                                  .withValues(alpha: 0.2),
                              focusedBorderColor: AppColors.primaryColor,
                              textStyle: AppStyles.primaryHeadlineText.copyWith(
                                fontSize: 22.sp,
                              ),
                              shape: MaterialPinShape.outlined,
                              cellSize: Size(70.w, 60.w),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          SizedBox(height: 26.h),
                          PrimaryBTN(
                            txt: 'Verify',
                            onPressed: () {
                              GoRouter.of(context).pushNamed(AppRoutes.main);
                            },
                          ),
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
