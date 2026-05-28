import 'package:finance_ui/screens/main_screen/data/visa_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VisaCard extends StatelessWidget {
  const VisaCard({
    super.key,
    required this.visaData,
  });

  final VisaData visaData;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327.w,
      height: 190.h,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: visaData.cardColor,
        borderRadius: BorderRadius.circular(24.r),
      ),
      child: Stack(
        children: [
          Positioned(
            left: -40.w,
            bottom: -90.h,
            child: Container(
              width: 230.w,
              height: 230.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [
                    Colors.white.withValues(alpha: 0.15),
                    Colors.white.withValues(alpha: 0.0),
                  ],
                ),
              ),
            ),
          ),

          Positioned(
            left: 20.w,
            bottom: -100.h,
            child: Container(
              width: 170.w,
              height: 170.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [
                    Colors.white.withValues(alpha: 0.12),
                    Colors.white.withValues(alpha: 0.0),
                  ],
                ),
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${visaData.cardLetter.toUpperCase()}-Card',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SvgPicture.asset(visaData.brandAsset!, height: 20.h),
                  ],
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Balance',
                      style: TextStyle(
                        color: Colors.white.withValues(alpha: 0.4),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      '${visaData.balance} EG',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '**** ${visaData.last4Numbers}',
                      style: TextStyle(
                        color: Colors.white.withValues(alpha: 0.4),
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 2.0,
                      ),
                    ),
                    Text(
                      visaData.date,
                      style: TextStyle(
                        color: Colors.white.withValues(alpha: 0.8),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
