import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/theme/app_typography.dart';

/// Category icon widget with circular design and label
/// Figma: Circular icon button with text label below
class CategoryIconWidget extends StatelessWidget {
  final String imagePath;
  final String label;
  final VoidCallback? onTap;

  const CategoryIconWidget({
    super.key,
    required this.imagePath,
    required this.label,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSpacing.xs),
      child: Container(
        width: 72.5,
        height: 75,
        decoration: BoxDecoration(
          color: AppColors.categoryColor,
          borderRadius: BorderRadius.circular(AppSpacing.radiusLargeSmall),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Image.asset(imagePath, width: 34, height: 34)),
              const SizedBox(height: AppSpacing.sm),
              Text(
                label,
                style: AppTypography.captionSmall.copyWith(
                  color: AppColors.textPrimary,
                  fontSize: 13,
                ),
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
