import 'package:flutter/material.dart';
import '../../../../core/constants/app_assets.dart';
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
  final bool isFavorite;
  final VoidCallback? onTap;
  final VoidCallback? onFavoriteTap;

  const MedicalCenterCardWidget({
    super.key,
    required this.name,
    required this.location,
    required this.rating,
    required this.reviewCount,
    this.isFavorite = false,
    this.onTap,
    this.onFavoriteTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      margin: const EdgeInsets.all(
        AppSpacing.xs,
      ), // Space around card for visibility
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: AppColors.backgroundWhite,
        borderRadius: BorderRadius.circular(
          AppSpacing.radiusMedium, // Figma: 12px radius
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.shadow.withValues(alpha: 0.08),
            offset: const Offset(0, 2),
            blurRadius: 8,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min, // Sizes to children's intrinsic height
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image section with favorite button
          Stack(
            children: [
              // Medical center image
              Container(
                height: 137, // Figma: ~120px height
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.backgroundGray,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  image: DecorationImage(
                    image: AssetImage(AppAssets.nearestMedicalCenterPng),
                    fit: BoxFit.fill,
                  ),
                ),
              ),

              // Favorite button
              Positioned(
                top: AppSpacing.sm, // Figma: 8px from top
                right: AppSpacing.sm, // Figma: 8px from right
                child: InkWell(
                  onTap: onFavoriteTap,
                  borderRadius: BorderRadius.circular(
                    AppSpacing.radiusCircular,
                  ),
                  child: Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      color: AppColors.black.withValues(alpha: 0.3),
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.shadow.withValues(alpha: 0.1),
                          offset: const Offset(0, 2),
                          blurRadius: 4,
                        ),
                      ],
                    ),
                    child: Icon(
                      isFavorite ? Icons.favorite : Icons.favorite_border,
                      color: AppColors.backgroundWhite,
                      size: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),

          // Content section
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Medical center name
              const SizedBox(height: 10),
              Text(
                name,
                style: AppTypography.bodyLarge.copyWith(
                  fontSize: 16, // Figma: 15px
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0,
                ),
              ),

              const SizedBox(height: AppSpacing.xs), // Figma: 4px gap
              // Location
              Text(
                location,
                style: AppTypography.caption, // Figma: Regular, 13px, gray
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),

              const SizedBox(height: 10), // Figma: 8px gap
              // Rating and reviews
              Row(
                children: [
                  Text(
                    reviewCount,
                    style: AppTypography.caption.copyWith(
                      fontSize: 12, // Figma: 12px
                      fontWeight: FontWeight.w400,
                      color: AppColors.black,
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
                      color: AppColors.backgroundWhite,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          rating.toStringAsFixed(1),
                          style: AppTypography.caption.copyWith(
                            fontSize: 12, // Figma: 12px
                            fontWeight: FontWeight.w500,
                            color: AppColors.textPrimary,
                          ),
                        ),
                        const SizedBox(width: 2),
                        Image.asset(
                          AppAssets.starPng,
                          width: 16,
                          height: 16,
                          fit: BoxFit.contain,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
