import 'package:finance_ui/core/components/app_back_button.dart';
import 'package:finance_ui/core/components/main_card.dart';
import 'package:finance_ui/core/styling/app_assets.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class MainAppBar {
  static AppBar mainAppBar(int index, String name) {
    return AppBar(
      leadingWidth: 65.w,
      leading: (index == 0)
          ? Row(
              children: [
                const Spacer(),
                ClipRRect(
                  borderRadius: BorderRadius.circular(99),
                  child: SizedBox(
                    width: 48,
                    height: 48,
                    child: Image.asset(AppAssets.profile),
                  ),
                ),
              ],
            )
          : const Row(children: [Spacer(), AppBackButton(borderRadius: 99)]),

      title: (index == 0)
          ? Column(
              mainAxisAlignment: .center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcome back', style: AppStyles.grey12medium),
                Text(name, style: AppStyles.black16w600.copyWith(fontSize: 18)),
              ],
            )
          : Text(
              (index == 1)
                  ? 'Reload'
                  : (index == 3)
                  ? 'All Cards'
                  : 'My Profile',
              style: AppStyles.black18semibold,
            ),

      actions: [
        MainCard(
          verticalPadding: 12,
          horizontalPadding: 12,
          borderRadius: 99,
          child: SvgPicture.asset(
            (index == 0)
                ? AppAssets.notifications
                : (index == 4)
                ? AppAssets.pencil
                : AppAssets.dots,
          ),
        ),
        const SizedBox(width: 24),
      ],

      centerTitle: (index != 0),
    );
  }
}
