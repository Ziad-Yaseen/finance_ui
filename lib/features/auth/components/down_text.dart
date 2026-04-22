import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:flutter/material.dart';

class DownText extends StatelessWidget {
  const DownText({
    super.key,
    this.onPressed,
    required this.text1,
    required this.text2,
  });
  final VoidCallback? onPressed;
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: onPressed,
        overlayColor: WidgetStatePropertyAll(
          AppColors.primaryColor.withValues(alpha: 0.1),
        ),
        borderRadius: BorderRadius.circular(4),
        child: RichText(
          text: TextSpan(
            text: text1,
            style: AppStyles.primaryHeadlineText.copyWith(
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
            children: [TextSpan(text: text2, style: AppStyles.textStyle)],
          ),
        ),
      ),
    );
  }
}
