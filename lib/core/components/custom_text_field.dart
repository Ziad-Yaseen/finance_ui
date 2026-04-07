import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    this.borderRadius = 8,
    this.bordersWidth = 1,
    this.color = AppColors.txtFieldFillColor,
    this.radiusColor = AppColors.txtFieldStrokeColor,
    this.width = 331,
    this.height,
    this.isPassword = false,
    super.key,
    required this.hint,
  });

  final String hint;
  final bool isPassword;
  final double width;
  final double? height;
  final Color color;
  final Color radiusColor;
  final double borderRadius;
  final double bordersWidth;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late bool isPassword = widget.isPassword;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width.w,
      height: widget.height?.h,
      child: TextField(
        autofocus: false,
        cursorColor: AppColors.primaryColor,
        onTapOutside: (event) {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        keyboardType: widget.isPassword
            ? TextInputType.visiblePassword
            : TextInputType.text,
        enableSuggestions: !widget.isPassword,
        autocorrect: !widget.isPassword,
        obscureText: isPassword,
        decoration: InputDecoration(
          filled: true,
          hintText: widget.hint,
          hintStyle: TextStyle(
            fontSize: 15.sp,
            letterSpacing: isPassword ? 5.0 : 0.0,
            fontWeight: FontWeight.w500,
            color: AppColors.secondaryColor,
          ),
          fillColor: AppColors.txtFieldFillColor,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 18.w,
            vertical: 18.h,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius.r),
            borderSide: BorderSide(
              color: AppColors.txtFieldStrokeColor,
              width: widget.bordersWidth,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius.r),
            borderSide: BorderSide(
              color: AppColors.primaryColor.withValues(alpha: 0.5),
              width: widget.bordersWidth,
            ),
          ),
          suffixIcon: widget.isPassword
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      isPassword = !isPassword;
                    });
                  },
                  icon: FaIcon(
                    isPassword
                        ? FontAwesomeIcons.eye
                        : FontAwesomeIcons.eyeSlash,
                    color: AppColors.iconColor,
                    size: 20.sp,
                  ),
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                )
              : null,
        ),
      ),
    );
  }
}
