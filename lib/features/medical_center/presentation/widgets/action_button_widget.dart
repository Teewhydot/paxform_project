import 'package:flutter/material.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/theme/app_typography.dart';

/// Action button widget for booking appointments
/// Figma: Icon + Title + Subtitle cards with colored backgrounds
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
        height: 161,
        width: 160,
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
              child: Padding(
                padding: const EdgeInsets.all(10.0), // Figma: Padding for image
                child: Image.asset(imagePath, fit: BoxFit.contain),
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
