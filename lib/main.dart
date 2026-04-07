import 'package:finance_ui/core/styling/theme_data.dart';
import 'package:finance_ui/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const Finance());
}

class Finance extends StatelessWidget {
  const Finance({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) =>
          MaterialApp(theme: AppThemes.lightTheme, home: child),
      child: const Home(),
    );
  }
}
