import 'package:flutter/material.dart';

class CardData {
  final double cardValue;
  final String last4Number;
  final String expiryDate;
  final CardCompany cardCompany;
  final Color cardColor;
  final bool verified;

  CardData({
    required this.cardValue,
    required this.last4Number,
    required this.expiryDate,
    required this.cardCompany,
    required this.cardColor,
    this.verified = false,
  });
}

enum CardCompany {
  visa,
  mastercard,
}
