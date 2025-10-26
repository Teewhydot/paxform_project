import 'package:flutter/material.dart';
import 'package:paxform_project/core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/theme/app_typography.dart';

class ActionButtonWidget extends StatelessWidget {
  final String imagePath;
  final Color backgroundColor;
  final String title;
  final String subtitle;
  final VoidCallback? onTap;

  const ActionButtonWidget({
    super.key,
    required this.imagePath,
    required this.backgroundColor,
    required this.title,
    required this.subtitle,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(
        AppSpacing.radiusMedium, // Figma: 12px radius
      ),
      child: Container(
        width: 160,
        height: 160,
        padding: const EdgeInsets.all(AppSpacing.md), // Figma: 16px padding
        decoration: BoxDecoration(
          color: backgroundColor, // Figma: White background
          borderRadius: BorderRadius.circular(
            AppSpacing.radiusMedium, // Figma: 12px radius
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            // Icon container
            Container(
              width: 42, // Figma: ~48px
              height: 42, // Figma: ~48px
              decoration: BoxDecoration(
                color: backgroundColor, // Figma: Colored background
                borderRadius: BorderRadius.circular(
                  AppSpacing.radiusSmall, // Figma: 8px radius
                ),
              ),
              child: Center(child: Image.asset(imagePath, fit: BoxFit.contain)),
            ),

            const SizedBox(height: AppSpacing.md), // Figma: 12px gap
            // Title
            Text(
              title,
              style: AppTypography.bodyLarge.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                letterSpacing: 0.2,
                height: 1.3,
              ),
            ),

            const SizedBox(height: AppSpacing.xs), // Figma: 4px gap
            // Subtitle
            Text(
              subtitle,
              style: AppTypography.caption.copyWith(
                color: AppColors.black,
                fontSize: 12,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.2,
                height: 1.3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
