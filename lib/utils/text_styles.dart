// lib/utils/text_styles.dart

import 'package:flutter/material.dart';
import 'package:sentra_coffee_frontend/utils/constants.dart'; 

class AppTextStyles {
  static const TextStyle title = TextStyle(
    fontFamily: 'Reenie Beanie', 
    fontSize: 55,
    fontWeight: FontWeight.normal,
    color: AppColors.primaryColor, 
  );

 
  static const TextStyle h1 = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: AppColors.textColor,
  );
  static const TextStyle h2 = TextStyle( 
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: AppColors.textColor,
  );
  static const TextStyle h3 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.textColor,
  );
  static const TextStyle h4 = TextStyle( 
    fontSize: 18,
    fontWeight: FontWeight.w600, 
    color: AppColors.textColor,
  );
  static const TextStyle bodyText1 = TextStyle( 
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: AppColors.textColor,
  );
  static const TextStyle bodyText2 = TextStyle( 
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: AppColors.greyText,
  );
  static const TextStyle caption = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: AppColors.greyText,
  );
  static const TextStyle buttonText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
}