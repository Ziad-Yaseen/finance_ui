import 'package:finance_ui/core/components/custom_text_field.dart';
import 'package:finance_ui/core/components/primary_btn.dart';
import 'package:finance_ui/core/components/primary_outlined_btn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PrimaryBtn(txt: 'Login', onPressed: () {}),
              SizedBox(height: 20.h),
              PrimaryOutlinedBtn(txt: 'Login', onPressed: () {}),
              SizedBox(height: 20.h),
              CustomTextField(hint: 'Login', height: 51, isPassword: true),
            ],
          ),
        ),
      ),
    );
  }
}
