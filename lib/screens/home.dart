import 'package:finance_ui/core/styling/app_assets.dart';
import 'package:finance_ui/core/components/primary_b_t_n.dart';
import 'package:finance_ui/core/components/primary_outlined_b_t_n.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(AppAssets.mainHomeImage, width: double.infinity),
              Spacer(),
              PrimaryBTN(txt: 'Login', onPressed: () {}),
              Spacer(),
              PrimaryOutlinedBTN(txt: 'Register', onPressed: () {}),
              Spacer(flex: 2),
              Text('Continue as a guest', style: AppStyles.textStyle),
              Spacer(),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
