import 'package:finance_ui/core/styling/app_assets.dart';
import 'package:finance_ui/screens/main_screen/components/custom_carousel.dart';
import 'package:finance_ui/screens/main_screen/components/custom_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 12.h),
              const CustomCarousel(),
              SizedBox(height: 24.h),
              Expanded(
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16.sp,
                    mainAxisSpacing: 16.sp,
                  ),
                  children: const [
                    CustomItem(
                      asset: AppAssets.send,
                      title: 'Send money',
                      subtitle: 'Take acc to acc',
                    ),
                    CustomItem(
                      asset: AppAssets.myCardActive,
                      title: 'Pay the bill',
                      subtitle: 'Lorem ipsum',
                    ),
                    CustomItem(
                      asset: AppAssets.send,
                      title: 'Request',
                      subtitle: 'Lorem ipsum',
                    ),
                    CustomItem(
                      asset: AppAssets.users,
                      title: 'Contact',
                      subtitle: 'Lorem ipsum',
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
