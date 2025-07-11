// lib/utils/constants.dart

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AppColors {
  static const Color primaryColor = Color(0xFF5D4037); 
  static const Color secondaryColor = Color(0xFFD2B48C); 

  // Warna Background
  static const Color lightGreyBackground = Color(0xFFF5F5F5); 
  static const Color backgroundColor = Color(0xFFFFFFFF); 

  // Warna Teks
  static const Color textColor = Color(0xFF333333); 
  static const Color darkGrey = Color(0xFF424242); 
  static const Color greyText = Color(0xFF757575); 


}

String formatRupiah(double amount) {
  final NumberFormat formatter = NumberFormat.currency(
    locale: 'id_ID', 
    symbol: 'Rp',   
    decimalDigits: 0, 
  );
  return formatter.format(amount);
}

String formatNumberWithThousandsSeparator(double amount) {
  final NumberFormat formatter = NumberFormat('#,###', 'id_ID');
  return formatter.format(amount);
}

String getMonthName(int month) {
  switch (month) {
    case 1: return 'Jan';
    case 2: return 'Feb';
    case 3: return 'Mar';
    case 4: return 'Apr';
    case 5: return 'May';
    case 6: return 'June';
    case 7: return 'Jul';
    case 8: return 'Aug';
    case 9: return 'Sep';
    case 10: return 'Oct';
    case 11: return 'Nov';
    case 12: return 'Dec';
    default: return '';
  }
}