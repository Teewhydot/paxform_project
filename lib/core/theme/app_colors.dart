import 'package:flutter/material.dart';

/// App color palette extracted from Figma Medical Center design
/// All colors match the design specifications with exact hex values
class AppColors {
  AppColors._(); // Private constructor to prevent instantiation

  // Primary Colors
  /// Primary blue used for headers, buttons, links, main cards
  /// Figma: #0D6EFD
  static const Color primaryBlue = Color(0xFF0A61B4);

  /// Light blue for hover states and tints
  /// Figma: #6EA8FE
  static const Color lightBlue = Color.fromARGB(255, 90, 124, 175);

  static const Color cardBlue = Color(0xFF0099FF);

  // Background Colors

  /// Card and container backgrounds - white
  /// Figma: #FFFFFF
  static const Color backgroundWhite = Color(0xFFFFFFFF);

  /// Secondary background - slightly darker gray
  /// Figma: #E9ECEF
  static const Color backgroundGray = Color(0xFFE9ECEF);

  // Text Colors
  /// Primary text color - dark, almost black
  /// Figma: #212529
  static const Color textPrimary = Color(0xFF212529);

  /// Secondary text color - medium gray for subtitles
  /// Figma: #6C757D
  static const Color textSecondary = Color(0xFF6C757D);

  /// Tertiary text color - light gray for hints
  /// Figma: #ADB5BD
  static const Color textTertiary = Color(0xFFADB5BD);

  /// White text for dark backgrounds
  /// Figma: #FFFFFF
  static const Color textWhite = Color(0xFFFFFFFF);

  // Accent Colors
  /// Success/Green - for hospital icons and positive actions
  /// Figma: #20C997
  static const Color accentGreen = Color(0xFF20976C);

  /// Light mint green background
  /// Figma: #D1F4E8
  static const Color accentGreenLight = Color(0xFFEDFCF2);

  /// Warning/Orange - for stomach category
  /// Figma: #FD7E14
  static const Color accentOrange = Color(0xFFFD7E14);

  /// Light orange background
  /// Figma: #FFE5D0
  static const Color accentOrangeLight = Color(0xFFFFE5D0);

  /// Error/Red - for heart category and favorites
  /// Figma: #DC3545
  static const Color accentRed = Color(0xFFDC3545);

  /// Light red/pink background
  /// Figma: #F8D7DA
  static const Color accentRedLight = Color(0xFFF8D7DA);

  /// Purple - for calendar icon
  /// Figma: #6F42C1
  static const Color accentPurple = Color(0xFF6F42C1);

  /// Light purple/lavender background
  /// Figma: #E2D9F3
  static const Color accentPurpleLight = Color(0xFFE2D9F3);

  // Semantic Colors
  /// Rating/Star color - yellow/gold
  /// Figma: #FFC107
  static const Color ratingYellow = Color(0xFFFFC107);

  /// Border and divider color
  /// Figma: #DEE2E6
  static const Color border = Color(0xFFDEE2E6);

  /// Shadow color (with opacity in implementation)
  /// Figma: #000000 with 0.1-0.15 opacity
  static const Color shadow = Color(0xFF000000);

  ///Category Color
  static const Color categoryColor = Color(0xFFF6F7FB);

  ///Handle Color
  static const Color handleColor = Color(0xFF97A4BF);
}
