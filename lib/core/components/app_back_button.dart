import 'package:finance_ui/core/components/main_card.dart';
import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppBackButton extends StatelessWidget {
  const AppBackButton({super.key, this.borderRadius = 12});
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return MainCard(
      horizontalPadding: 12,
      verticalPadding: 12,
      borderRadius: borderRadius,
      onPressed: () {
        GoRouter.of(context).pop();
      },
      child: const Icon(
        Icons.arrow_back_ios_new_rounded,
        color: AppColors.primaryColor,
      ),
    );
  }
}
