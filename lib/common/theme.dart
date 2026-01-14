import 'package:flutter/material.dart';

class AppTheme {
  // Exact Colors from Figma - PIXEL PERFECT
  static const Color primaryBlue = Color(0xFF5A94EC);
  static const Color yellowAccent = Color(0xFFFFE651);
  static const Color backgroundColor = Color(0xFFF8F8F9);
  static const Color filterBackground = Color(0xFFF9F9F9);
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color textPrimary = Color(0xFF000000);
  static const Color textSecondary = Color(0xFF8F9098);
  static const Color activeGreen = Color(0xFF00C566);
  static const Color inactiveRed = Color(0xFFFF3B30);
  static const Color iconGray = Color(0xFFB8B8B8);
  static const Color borderGray = Color(0xFFE5E5E5);
  static const Color ratingBoxBg = Color(0xFFF3F3F3);
  static const Color starYellow = Color(0xFFFFD700);
  static const Color pinkBorder = Color(0xFFFF69B4);

  // Text Styles - Poppins Font Family - EXACT WEIGHTS
  static const TextStyle poppinsSemiBold12 = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 12,
    fontWeight: FontWeight.w600,
    height: 1.5,
    letterSpacing: 0,
  );

  static const TextStyle poppinsSemiBold14 = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 14,
    fontWeight: FontWeight.w600,
    height: 1.5,
    letterSpacing: 0,
  );

  static const TextStyle poppinsSemiBold16 = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 16,
    fontWeight: FontWeight.w600,
    height: 1.5,
    letterSpacing: 0,
  );

  static const TextStyle poppinsSemiBold18 = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 18,
    fontWeight: FontWeight.w600,
    height: 1.5,
    letterSpacing: 0,
  );

  static const TextStyle poppinsSemiBold20 = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 20,
    fontWeight: FontWeight.w600,
    height: 1.5,
    letterSpacing: 0,
  );

  static const TextStyle poppinsMedium12 = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 12,
    fontWeight: FontWeight.w500,
    height: 1.5,
    letterSpacing: 0,
  );

  static const TextStyle poppinsMedium14 = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.5,
    letterSpacing: 0,
  );

  static const TextStyle poppinsRegular12 = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 12,
    fontWeight: FontWeight.w400,
    height: 1.5,
    letterSpacing: 0,
  );

  static const TextStyle poppinsRegular14 = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.5,
    letterSpacing: 0,
  );

  static const TextStyle poppinsBold32 = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 32,
    fontWeight: FontWeight.w700,
    height: 1.5,
    letterSpacing: 0,
  );

  static const TextStyle poppinsBold48 = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 48,
    fontWeight: FontWeight.w700,
    height: 1.2,
    letterSpacing: 0,
  );

  // Theme Data
  static ThemeData lightTheme = ThemeData(
    primaryColor: primaryBlue,
    scaffoldBackgroundColor: white,
    fontFamily: 'Poppins',
    useMaterial3: true,
    colorScheme: ColorScheme.light(
      primary: primaryBlue,
      secondary: yellowAccent,
      surface: backgroundColor,
    ),
  );
}