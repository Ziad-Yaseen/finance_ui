import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/screens/main_screen/components/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCarousel extends StatefulWidget {
  const CustomCarousel({super.key});

  @override
  State<CustomCarousel> createState() => _CustomCarouselState();
}

class _CustomCarouselState extends State<CustomCarousel> {
  double position = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 263.0.h,
            padEnds: false,
            viewportFraction: 0.65,
            enlargeCenterPage: true,
            enlargeFactor: 0.2,
            onPageChanged: (index, reason) =>
                setState(() => position = index.toDouble()),
          ),
          items: const [
            CustomCard(
              cardLetter: 'x',
              balance: 23400,
              last4Numbers: '3434',
              date: '12/24',
            ),

            CustomCard(
              cardLetter: 'M',
              balance: 3209,
              last4Numbers: '4545',
              date: '',
              cardColor: Color(0xFF4151A6),
            ),

            CustomCard(
              cardLetter: 'E',
              balance: 15450,
              last4Numbers: '9876',
              date: '11/27',
              cardColor: Color(0xFF10B981),
            ),

            CustomCard(
              cardLetter: 'P',
              balance: 8900,
              last4Numbers: '1212',
              date: '03/28',
              cardColor: Color(0xFF7C3AED),
            ),

            CustomCard(
              cardLetter: 'S',
              balance: 45000,
              last4Numbers: '0000',
              date: '09/29',
              cardColor: Color(0xFF1E293B),
            ),
          ],
        ),
        SizedBox(height: 16.h),
        DotsIndicator(
          dotsCount: 5,
          position: position,

          decorator: DotsDecorator(
            color: AppColors.greyIndicator,
            activeColor: AppColors.primaryColor,
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            spacing: EdgeInsets.symmetric(horizontal: 2.0.w),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
      ],
    );
  }
}
