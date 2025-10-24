import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/theme/app_typography.dart';

/// Medical center card widget with image, name, location, reviews, and rating
/// Figma: Card with image, text overlay with name/location, and rating badge
class MedicalCenterCardWidget extends StatelessWidget {
  final String name;
  final String location;
  final double rating;
  final String reviewCount;
  final String? imageUrl;
  final bool isFavorite;
  final VoidCallback? onTap;
  final VoidCallback? onFavoriteTap;

  const MedicalCenterCardWidget({
    super.key,
    required this.name,
    required this.location,
    required this.rating,
    required this.reviewCount,
    this.imageUrl,
    this.isFavorite = false,
    this.onTap,
    this.onFavoriteTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(AppSpacing.radiusMedium),
      child: Container(
        width: 200, // Figma: ~200px width for horizontal scroll
        decoration: BoxDecoration(
          color: AppColors.backgroundWhite,
          borderRadius: BorderRadius.circular(
            AppSpacing.radiusMedium, // Figma: 12px radius
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.shadow.withValues(alpha:0.08),
              offset: const Offset(0, 2),
              blurRadius: 8,
              spreadRadius: 0,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image section with favorite button
            Stack(
              children: [
                // Medical center image
                Container(
                  height: 120, // Figma: ~120px height
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.backgroundGray,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(AppSpacing.radiusMedium),
                      topRight: Radius.circular(AppSpacing.radiusMedium),
                    ),
                    image: imageUrl != null
                        ? DecorationImage(
                            image: NetworkImage(imageUrl!),
                            fit: BoxFit.cover,
                          )
                        : null,
                  ),
                  child: imageUrl == null
                      ? Icon(
                          Icons.local_hospital,
                          size: 48,
                          color: AppColors.textTertiary,
                        )
                      : null,
                ),

                // Favorite button
                Positioned(
                  top: AppSpacing.sm, // Figma: 8px from top
                  right: AppSpacing.sm, // Figma: 8px from right
                  child: InkWell(
                    onTap: onFavoriteTap,
                    borderRadius: BorderRadius.circular(AppSpacing.radiusCircular),
                    child: Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        color: AppColors.backgroundWhite,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.shadow.withValues(alpha:0.1),
                            offset: const Offset(0, 2),
                            blurRadius: 4,
                          ),
                        ],
                      ),
                      child: Icon(
                        isFavorite ? Icons.favorite : Icons.favorite_border,
                        color: isFavorite
                            ? AppColors.accentRed
                            : AppColors.textSecondary,
                        size: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // Content section
            Padding(
              padding: const EdgeInsets.all(AppSpacing.md), // Figma: 12px padding
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Medical center name
                  Text(
                    name,
                    style: AppTypography.bodyLarge.copyWith(
                      fontSize: 15, // Figma: 15px
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),

                  const SizedBox(height: AppSpacing.xs), // Figma: 4px gap

                  // Location
                  Text(
                    location,
                    style: AppTypography.caption, // Figma: Regular, 13px, gray
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),

                  const SizedBox(height: AppSpacing.sm), // Figma: 8px gap

                  // Rating and reviews
                  Row(
                    children: [
                      // Review count
                      Icon(
                        Icons.chat_bubble_outline,
                        size: 14,
                        color: AppColors.textSecondary,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        reviewCount,
                        style: AppTypography.caption.copyWith(
                          fontSize: 12, // Figma: 12px
                          color: AppColors.textSecondary,
                        ),
                      ),

                      const Spacer(),

                      // Rating
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 6,
                          vertical: 3,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.ratingYellow.withValues(alpha:0.15),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              rating.toStringAsFixed(1),
                              style: AppTypography.caption.copyWith(
                                fontSize: 12, // Figma: 12px
                                fontWeight: FontWeight.w600,
                                color: AppColors.textPrimary,
                              ),
                            ),
                            const SizedBox(width: 2),
                            Icon(
                              Icons.star,
                              size: 12,
                              color: AppColors.ratingYellow,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
