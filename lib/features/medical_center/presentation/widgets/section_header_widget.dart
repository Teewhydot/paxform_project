import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_typography.dart';

/// Reusable section header widget with title and "See All" link
/// Used across multiple sections in the medical center home screen
/// Figma: Section headers with title on left, "See All" link on right
class SectionHeaderWidget extends StatelessWidget {
  /// Section title text
  final String title;

  /// Callback when "See All" is tapped
  final VoidCallback? onSeeAllTapped;

  /// Whether to show the "See All" link
  /// Default: true
  final bool showSeeAll;

  const SectionHeaderWidget({
    super.key,
    required this.title,
    this.onSeeAllTapped,
    this.showSeeAll = true,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Section title
        Text(
          title,
          style: AppTypography.h2, // Figma: Bold, 18px
        ),

        // "See All" link with arrow
        if (showSeeAll)
          InkWell(
            onTap: onSeeAllTapped,
            borderRadius: BorderRadius.circular(8), // Touch feedback radius
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 4.0,
              ), // Expand touch target
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'See All',
                    style: AppTypography.link, // Figma: Medium, 14px, blue
                  ),
                  const SizedBox(width: 4), // Small gap between text and icon
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 12, // Small arrow icon
                    color: AppColors.primaryBlue, // Figma: Blue arrow
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
