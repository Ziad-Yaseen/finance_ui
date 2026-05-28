import 'package:finance_ui/core/styling/app_assets.dart';
import 'package:finance_ui/screens/main_screen/components/chart.dart';
import 'package:finance_ui/screens/main_screen/components/custom_item.dart';
import 'package:finance_ui/screens/main_screen/components/statistic_date.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Statistic extends StatelessWidget {
  const Statistic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const StatisticDate(),
              SizedBox(height: 16.h),

              const Chart(),

              SizedBox(height: 16.h),

              Expanded(
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16.sp,
                    mainAxisSpacing: 16.sp,
                  ),
                  children: const [
                    CustomItem(
                      asset: AppAssets.download,
                      title: '15000 EG',
                      subtitle: 'Income',
                      left: true,
                    ),
                    CustomItem(
                      asset: AppAssets.upload,
                      title: '35000 EG',
                      subtitle: 'Outcome',
                      left: true,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
