import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/theme/app_typography.dart';

/// Action button widget for booking appointments
/// Figma: Icon + Title + Subtitle cards with colored backgrounds
class ActionButtonWidget extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final Color backgroundColor;
  final String title;
  final String subtitle;
  final VoidCallback? onTap;

  const ActionButtonWidget({
    super.key,
    required this.icon,
    required this.iconColor,
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
        padding: const EdgeInsets.all(AppSpacing.lg), // Figma: 16px padding
        decoration: BoxDecoration(
          color: AppColors.backgroundWhite, // Figma: White background
          borderRadius: BorderRadius.circular(
            AppSpacing.radiusMedium, // Figma: 12px radius
          ),
          border: Border.all(
            color: AppColors.border, // Figma: Light gray border
            width: 1,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            // Icon container
            Container(
              width: 48, // Figma: ~48px
              height: 48, // Figma: ~48px
              decoration: BoxDecoration(
                color: backgroundColor, // Figma: Colored background
                borderRadius: BorderRadius.circular(
                  AppSpacing.radiusSmall, // Figma: 8px radius
                ),
              ),
              child: Icon(
                icon,
                size: AppSpacing.iconLarge, // Figma: 32px icon
                color: iconColor, // Figma: Colored icon
              ),
            ),

            const SizedBox(height: AppSpacing.md), // Figma: 12px gap

            // Title
            Text(
              title,
              style: AppTypography.bodyLarge.copyWith(
                fontSize: 15, // Figma: 15px
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),

            const SizedBox(height: AppSpacing.xs), // Figma: 4px gap

            // Subtitle
            Text(
              subtitle,
              style: AppTypography.caption, // Figma: Regular, 13px, gray
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
