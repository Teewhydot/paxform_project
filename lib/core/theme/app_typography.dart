import 'package:flutter/material.dart';
import 'app_colors.dart';

/// Typography styles matching Figma Medical Center design
/// Uses system default fonts for cross-platform compatibility
class AppTypography {
  AppTypography._(); // Private constructor to prevent instantiation

  // Base font family - using system default for cross-platform support
  static const String _fontFamily = 'SF Pro Display'; // iOS default, falls back to Roboto on Android

  // Header Styles
  /// Large header style for main titles
  /// Figma: Bold, 20px
  static const TextStyle h1 = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 20,
    fontWeight: FontWeight.w700, // Bold
    height: 1.3,
    letterSpacing: -0.3,
    color: AppColors.textPrimary,
  );

  /// Medium header style for section titles
  /// Figma: Bold, 18px
  static const TextStyle h2 = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 18,
    fontWeight: FontWeight.w700, // Bold
    height: 1.3,
    letterSpacing: -0.2,
    color: AppColors.textPrimary,
  );

  /// Small header style
  /// Figma: Semi-bold, 16px
  static const TextStyle h3 = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w600, // Semi-bold
    height: 1.4,
    letterSpacing: -0.1,
    color: AppColors.textPrimary,
  );

  // Body Text Styles
  /// Large body text - for doctor names, card titles
  /// Figma: Semi-bold, 16px
  static const TextStyle bodyLarge = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w600, // Semi-bold
    height: 1.5,
    letterSpacing: 0,
    color: AppColors.textPrimary,
  );

  /// Regular body text - for descriptions, details
  /// Figma: Regular, 15px
  static const TextStyle bodyMedium = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 15,
    fontWeight: FontWeight.w400, // Regular
    height: 1.5,
    letterSpacing: 0,
    color: AppColors.textPrimary,
  );

  /// Small body text - for secondary information
  /// Figma: Regular, 14px
  static const TextStyle bodySmall = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w400, // Regular
    height: 1.5,
    letterSpacing: 0,
    color: AppColors.textSecondary,
  );

  // Caption/Label Styles
  /// Caption text for hints, labels
  /// Figma: Regular, 13px
  static const TextStyle caption = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 13,
    fontWeight: FontWeight.w400, // Regular
    height: 1.4,
    letterSpacing: 0,
    color: AppColors.textSecondary,
  );

  /// Small caption for tiny labels
  /// Figma: Regular, 12px
  static const TextStyle captionSmall = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w400, // Regular
    height: 1.4,
    letterSpacing: 0,
    color: AppColors.textTertiary,
  );

  // Button Text Styles
  /// Large button text
  /// Figma: Medium, 16px
  static const TextStyle buttonLarge = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w500, // Medium
    height: 1.2,
    letterSpacing: 0.1,
    color: AppColors.textWhite,
  );

  /// Medium button text
  /// Figma: Medium, 15px
  static const TextStyle buttonMedium = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 15,
    fontWeight: FontWeight.w500, // Medium
    height: 1.2,
    letterSpacing: 0.1,
    color: AppColors.textWhite,
  );

  /// Small button text
  /// Figma: Medium, 14px
  static const TextStyle buttonSmall = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w500, // Medium
    height: 1.2,
    letterSpacing: 0.1,
    color: AppColors.textWhite,
  );

  // Specialized Styles
  /// Search bar placeholder text
  /// Figma: Regular, 15px
  static const TextStyle searchHint = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 15,
    fontWeight: FontWeight.w400, // Regular
    height: 1.5,
    letterSpacing: 0,
    color: AppColors.textTertiary,
  );

  /// Badge text for pills (Tomorrow, time, etc.)
  /// Figma: Medium, 13px
  static const TextStyle badge = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 13,
    fontWeight: FontWeight.w500, // Medium
    height: 1.3,
    letterSpacing: 0,
    color: AppColors.primaryBlue,
  );

  /// Rating text
  /// Figma: Semi-bold, 14px
  static const TextStyle rating = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w600, // Semi-bold
    height: 1.3,
    letterSpacing: 0,
    color: AppColors.textPrimary,
  );

  /// Link text for "See All"
  /// Figma: Medium, 14px
  static const TextStyle link = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w500, // Medium
    height: 1.4,
    letterSpacing: 0,
    color: AppColors.primaryBlue,
  );
}
