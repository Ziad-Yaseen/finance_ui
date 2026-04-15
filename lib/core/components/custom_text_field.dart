import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.showPasswordIcon = false,
    this.height = 56,
    this.width = 331,
    this.hint = 'Hint',
    this.fillColor = AppColors.txtFieldFillColor,
    this.strokeColor = AppColors.txtFieldStrokeColor,
    this.cursorColor = AppColors.primaryColor,
    this.icon = Icons.remove_red_eye_outlined,
    this.borderRadius = 8,
    this.onPressed,
    this.password = false,
  });
  final bool showPasswordIcon;
  final double height;
  final double width;
  final String hint;
  final Color fillColor;
  final Color strokeColor;
  final Color cursorColor;
  final IconData icon;
  final double borderRadius;
  final VoidCallback? onPressed;
  final bool password;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width.w,
      height: height.h,
      child: TextField(
        obscureText: password,
        onTapOutside: (event) {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        autofocus: false,
        cursorColor: cursorColor,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: AppStyles.textFieldStyle,
          contentPadding: EdgeInsets.all(18),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius.r),
            borderSide: BorderSide(color: strokeColor, width: 1),
          ),
          filled: true,
          fillColor: fillColor,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius.r),
            borderSide: BorderSide(
              color: AppColors.primaryColor.withValues(alpha: 0.6),
              width: 1,
            ),
          ),
          suffixIcon: showPasswordIcon
              ? IconButton(
                  icon: Icon(
                    password ? icon : Icons.visibility_off_outlined,
                    size: 24.sp,
                    color: AppColors.iconColor,
                  ),
                  onPressed: onPressed,
                )
              : null,
        ),
        style: AppStyles.textFieldStyle.copyWith(
          color: AppColors.blackTxtColor,
        ),
      ),
    );
  }
}
