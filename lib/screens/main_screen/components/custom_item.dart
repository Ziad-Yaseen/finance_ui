import 'package:finance_ui/core/components/main_card.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:finance_ui/screens/main_screen/components/colored_container_with_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomItem extends StatelessWidget {
  const CustomItem({
    super.key,
    required this.asset,
    required this.title,
    required this.subtitle,
    this.left = false,
  });
  final String asset;
  final String title;
  final String subtitle;
  final bool left;

  @override
  Widget build(BuildContext context) {
    return MainCard(
      verticalPadding: 16,
      horizontalPadding: 16,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: left ? Alignment.topLeft : Alignment.center,
            child: ColoredContainerWithIcon(asset: asset),
          ),
          SizedBox(height: 12.h),
          Align(
            alignment: left ? Alignment.topLeft : Alignment.center,
            child: Text(title, style: AppStyles.black16w600),
          ),
          SizedBox(height: 3.h),
          Align(
            alignment: left ? Alignment.topLeft : Alignment.center,
            child: Text(subtitle, style: AppStyles.grey12medium),
          ),
        ],
      ),
    );
  }
}
