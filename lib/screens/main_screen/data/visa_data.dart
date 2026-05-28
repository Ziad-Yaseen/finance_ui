import 'package:finance_ui/core/styling/app_assets.dart';
import 'package:flutter/material.dart';

class VisaData {
  final String cardLetter;
  final int balance;
  final String last4Numbers;
  final String date;
  final Color cardColor;
  final String? brandAsset;

  const VisaData({
    required this.cardLetter,
    required this.balance,
    required this.last4Numbers,
    required this.date,
    required this.cardColor,
    this.brandAsset = AppAssets.visa,
  });
}

class VisaDataList {
  static List<VisaData> cardsList = const [
    VisaData(
      cardLetter: 'X',
      balance: 23400,
      last4Numbers: '3434',
      date: '12/24',
      cardColor: Color(0xFF617AFD),
    ),
    VisaData(
      cardLetter: 'M',
      balance: 3209,
      last4Numbers: '4545',
      date: '05/26',
      cardColor: Color(0xFF4151A6),
    ),
    VisaData(
      cardLetter: 'E',
      balance: 15450,
      last4Numbers: '9876',
      date: '11/27',
      cardColor: Color(0xFF10B981),
    ),
    VisaData(
      cardLetter: 'P',
      balance: 8900,
      last4Numbers: '1212',
      date: '03/28',
      cardColor: Color(0xFF7C3AED),
    ),
    VisaData(
      cardLetter: 'S',
      balance: 45000,
      last4Numbers: '0000',
      date: '09/29',
      cardColor: Color(0xFF1E293B),
    ),
    
  ];
}
