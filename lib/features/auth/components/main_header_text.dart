import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainHeaderText extends StatelessWidget {
  const MainHeaderText(this.text, {super.key, this.width = 280});
  final String text;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width.w,
      child: Text(text, style: AppStyles.primaryHeadlineText),
    );
  }
}
