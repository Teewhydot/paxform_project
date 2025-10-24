import 'package:flutter/material.dart';
import '../../../../core/constants/app_assets.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/theme/app_typography.dart';

/// Custom search bar widget with filter and scan icons
/// Figma: White rounded search bar with icons
/// Height: ~52px, Radius: 12px
class SearchBarWidget extends StatelessWidget {
  /// Callback when search field is tapped or submitted
  final VoidCallback? onSearchTapped;

  /// Callback when filter icon is tapped
  final VoidCallback? onFilterTapped;

  /// Callback when scan icon is tapped
  final VoidCallback? onScanTapped;

  /// Search text controller
  final TextEditingController? controller;

  /// Placeholder text
  final String hintText;

  const SearchBarWidget({
    super.key,
    this.onSearchTapped,
    this.onFilterTapped,
    this.onScanTapped,
    this.controller,
    this.hintText = 'Search',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52, // Figma: ~52px height
      decoration: BoxDecoration(
        color: AppColors.backgroundWhite, // Figma: White background
        borderRadius: BorderRadius.circular(
          AppSpacing.radiusMedium, // Figma: 12px radius
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.shadow.withValues(alpha:0.08), // Subtle shadow
            offset: const Offset(0, 2), // Figma: Y offset 2px
            blurRadius: 8, // Figma: 8px blur
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        children: [
          // Search icon (left)
          Padding(
            padding: const EdgeInsets.only(
              left: AppSpacing.lg, // Figma: 16px left padding
              right: AppSpacing.md, // Figma: 12px right padding
            ),
            child: Icon(
              Icons.search,
              size: AppSpacing.iconMedium, // Figma: 24px icon
              color: AppColors.textSecondary, // Figma: Gray icon
            ),
          ),

          // Search text field (expandable)
          Expanded(
            child: TextField(
              controller: controller,
              onTap: onSearchTapped,
              style: AppTypography.bodyMedium, // Figma: Regular, 15px
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: AppTypography.searchHint, // Figma: Gray, 15px
                border: InputBorder.none, // No border
                contentPadding: EdgeInsets.zero, // Remove default padding
                isDense: true, // Compact layout
              ),
            ),
          ),

          // Filter icon
          InkWell(
            onTap: onFilterTapped,
            borderRadius: BorderRadius.circular(8),
            child: Padding(
              padding: const EdgeInsets.all(AppSpacing.sm), // 8px padding for touch target
              child: Image.asset(
                AppAssets.filterPng,
                width: AppSpacing.iconMedium, // Figma: 24px icon
                height: AppSpacing.iconMedium,
                fit: BoxFit.contain,
              ),
            ),
          ),

          const SizedBox(width: AppSpacing.sm), // Figma: 8px gap

          // Scan/Image icon (blue rounded button)
          InkWell(
            onTap: onScanTapped,
            borderRadius: BorderRadius.circular(
              AppSpacing.radiusSmall, // Figma: 8px radius
            ),
            child: Container(
              width: 36, // Figma: ~36px width
              height: 36, // Figma: ~36px height
              margin: const EdgeInsets.only(
                right: AppSpacing.sm, // Figma: 8px right margin
              ),
              decoration: BoxDecoration(
                color: AppColors.primaryBlue, // Figma: Blue background
                borderRadius: BorderRadius.circular(
                  AppSpacing.radiusSmall, // Figma: 8px radius
                ),
              ),
              child: Image.asset(
                AppAssets.searchLocationPng,
                width: 20, // Figma: ~20px icon
                height: 20,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
