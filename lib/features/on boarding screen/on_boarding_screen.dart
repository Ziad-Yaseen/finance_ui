import 'package:finance_ui/core/components/primary_b_t_n.dart';
import 'package:finance_ui/core/components/primary_outlined_b_t_n.dart';
import 'package:finance_ui/core/routing/app_routes.dart';
import 'package:finance_ui/core/styling/app_assets.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                AppAssets.mainHomeImage,
                width: double.infinity,
                fit: BoxFit.fitWidth,
              ),
              const Spacer(),
              PrimaryBTN(
                txt: 'Login',
                onPressed: () {
                  GoRouter.of(context).pushNamed(AppRoutes.loginScreen);
                },
              ),
              const Spacer(),
              PrimaryOutlinedBTN(
                txt: 'Register',
                onPressed: () {
                  GoRouter.of(context).pushNamed(AppRoutes.registerScreen);
                },
              ),
              const Spacer(flex: 2),
              InkWell(
                borderRadius: BorderRadius.circular(12),
                onTap: () => GoRouter.of(context).pushNamed(AppRoutes.main),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Text(
                    'Continue as a guest',
                    style: AppStyles.textStyle.copyWith(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
