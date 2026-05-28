import 'package:finance_ui/screens/main_screen/components/visa_card.dart';
import 'package:finance_ui/screens/main_screen/data/visa_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: ListView.builder(
            itemCount: VisaDataList.cardsList.length,
            itemBuilder: (context, index) {
              final cardData = VisaDataList.cardsList[index];
              return Padding(
                padding: EdgeInsets.only(bottom: 16.h),
                child: VisaCard(visaData: cardData),
              );
            },
          ),
        ),
      ),
    );
  }
}
