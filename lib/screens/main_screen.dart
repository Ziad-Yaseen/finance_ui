import 'package:finance_ui/core/styling/app_assets.dart';
import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:finance_ui/screens/main_screen/home.dart';
import 'package:finance_ui/screens/main_screen/my_card.dart';
import 'package:finance_ui/screens/main_screen/profile.dart';
import 'package:finance_ui/screens/main_screen/statistic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  List<Widget> screen = const [
    Home(),
    Statistic(),
    SizedBox(),
    MyCard(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Transform.translate(
        offset: Offset(0, 31.h),
        child: SizedBox(
          height: 64,
          width: 64,
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: const Color(0xFF6366F1),
            elevation: 2,
            shape: const CircleBorder(),
            child: Container(
              height: 26,
              width: 26,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
              ),
              child: const Icon(Icons.add, color: Color(0xFF6366F1), size: 20),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        elevation: 10,
        color: AppColors.whiteColor,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildNavItem(
              0,
              AppAssets.homeInActive,
              AppAssets.homeActive,
              'Home',
            ),
            _buildNavItem(
              1,
              AppAssets.statisticInActive,
              AppAssets.statisticActive,
              'Statistic',
            ),

            const SizedBox(width: 48),

            _buildNavItem(
              3,
              AppAssets.myCardInActive,
              AppAssets.myCardActive,
              'My card',
            ),
            _buildNavItem(
              4,
              AppAssets.profileInActive,
              AppAssets.profileActive,
              'Profile',
            ),
          ],
        ),
      ),
      body: IndexedStack(index: currentIndex, children: screen),
    );
  }

  Widget _buildNavItem(
    int index,
    String inactiveIcon,
    String activeIcon,
    String label,
  ) {
    bool isActive = currentIndex == index;

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => setState(() => currentIndex = index),
      child: SizedBox(
        width: 65,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              isActive ? activeIcon : inactiveIcon,
              height: 24,
              width: 24,
            ),
            const SizedBox(height: 6),
            Text(
              label,
              style: isActive
                  ? AppStyles.bottomNvBarActive
                  : AppStyles.bottomNvBarInactive,
            ),
          ],
        ),
      ),
    );
  }
}
