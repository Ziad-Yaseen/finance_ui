import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/screens/main_screen/components/custom_card.dart';
import 'package:finance_ui/screens/main_screen/data/visa_data.dart';
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
    final cards = VisaDataList.cardsList;

    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 263.0.h,
            padEnds: false,
            viewportFraction: 0.65,
            enlargeCenterPage: true,
            enlargeFactor: 0.2,
            onScrolled: (value) {
              if (value != null) {
                setState(() {
                  position = value % cards.length;
                });
              }
            },
          ),
          items: cards.map((cardData) {
            return CustomCard(visaData: cardData);
          }).toList(),
        ),
        SizedBox(height: 16.h),
        DotsIndicator(
          dotsCount: cards.length,
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
