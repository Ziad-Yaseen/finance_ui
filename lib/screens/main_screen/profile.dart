import 'package:finance_ui/core/styling/app_assets.dart';
import 'package:finance_ui/screens/main_screen/components/profile_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 39 - 24),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(99),
                child: Image.asset(
                  AppAssets.profile,
                  width: 100.w,
                  height: 100.w,
                ),
              ),
            ),
            const ProfileSection(
              title: 'Full Name',
              subtitle: 'Ziad Yaseen',
              space: 9,
            ),
            const ProfileSection(
              title: 'Email',
              subtitle: 'ziadyaseen.dev@gmai.com',
            ),
            const ProfileSection(
              title: 'Phone Number',
              subtitle: '+2010801732',
            ),
            const ProfileSection(title: 'Address', subtitle: 'Luxor, Egypt'),
          ],
        ),
      ),
    );
  }
}
