import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/theme/app_typography.dart';

/// Category icon widget with circular design and label
/// Figma: Circular icon button with text label below
class CategoryIconWidget extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback? onTap;

  const CategoryIconWidget({
    super.key,
    required this.icon,
    required this.label,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(
        AppSpacing.radiusMedium, // Figma: 12px radius for touch feedback
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.xs), // 4px padding
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Circular icon container
            Container(
              width: 56, // Figma: ~56px diameter
              height: 56, // Figma: ~56px diameter
              decoration: BoxDecoration(
                color: AppColors.categoryColor, // Figma: Colored background
                shape: BoxShape.circle,
              ),
              child: Icon(
                icon,
                size: 28, // Figma: ~28px icon
              ),
            ),

            const SizedBox(height: AppSpacing.sm), // Figma: 8px gap

            // Label
            Text(
              label,
              style: AppTypography.captionSmall.copyWith(
                color: AppColors.textPrimary,
                fontSize: 13, // Figma: 13px
              ),
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
