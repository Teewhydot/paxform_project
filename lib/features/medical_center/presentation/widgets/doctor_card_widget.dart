import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/constants/app_assets.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/theme/app_typography.dart';

/// Doctor card widget with profile, rating, availability, and location
/// Figma: White card with doctor info, star rating, schedule badges, and distance
class DoctorCardWidget extends StatelessWidget {
  final String name;
  final String specialty;
  final int yearsOfExperience;
  final double rating;
  final int reviewCount;
  final String availability;
  final String timeSlot;
  final String location;
  final String distance;
  final String? profileImageUrl;
  final bool isFavorite;
  final VoidCallback? onTap;
  final VoidCallback? onFavoriteTap;

  const DoctorCardWidget({
    super.key,
    required this.name,
    required this.specialty,
    required this.yearsOfExperience,
    required this.rating,
    required this.reviewCount,
    required this.availability,
    required this.timeSlot,
    required this.location,
    required this.distance,
    this.profileImageUrl,
    this.isFavorite = false,
    this.onTap,
    this.onFavoriteTap,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(AppSpacing.lg), // Figma: 16px padding
          decoration: BoxDecoration(
            color: AppColors.backgroundWhite, // Figma: White background
            borderRadius: BorderRadius.circular(
              AppSpacing.radiusMedium, // Figma: 12px radius
            ),
            boxShadow: [
              BoxShadow(
                color: AppColors.shadow.withValues(alpha: 0.08),
                offset: const Offset(0, 2), // X=0, Y=2
                blurRadius: 8, // Blur=8
                spreadRadius: 0, // Spread=0
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header: Profile + Name + Favorite
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Profile image
                  CircleAvatar(
                    radius: 24, // Figma: ~48px diameter
                    backgroundColor: AppColors.backgroundGray,
                    backgroundImage: profileImageUrl != null
                        ? NetworkImage(profileImageUrl!)
                        : AssetImage(AppAssets.person1Png) as ImageProvider,
                  ),
                  const SizedBox(width: AppSpacing.md), // Figma: 12px gap
                  // Name and specialty
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style:
                              AppTypography.bodyLarge, // Figma: Semi-bold, 16px
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 2),
                        Text(
                          '$specialty | $yearsOfExperience Years',
                          style: AppTypography
                              .caption, // Figma: Regular, 13px, gray
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: AppSpacing.sm),
                        // Rating
                        Row(
                          children: [
                            Text(
                              rating.toStringAsFixed(1),
                              style: AppTypography
                                  .rating, // Figma: Semi-bold, 14px
                            ),
                            const SizedBox(width: 4),

                            Image.asset(
                              AppAssets.starPng,
                              width: 18,
                              height: 18,
                              fit: BoxFit.contain,
                            ),

                            const SizedBox(width: AppSpacing.sm),

                            Text(
                              '$reviewCount Reviews',
                              style: AppTypography.caption.copyWith(
                                color: AppColors.black,
                              ), // Figma: Regular, 13px, gray
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: AppSpacing.xl), // Figma: 12px gap
              // Availability and time slot badges
              Row(
                children: [
                  // Availability badge
                  _buildBadge(
                    svgPath: AppAssets.calendarSvg,
                    text: availability,
                    color: AppColors.primaryBlue,
                  ),
                  const SizedBox(width: AppSpacing.sm), // Figma: 8px gap
                  // Time slot badge
                  _buildBadge(
                    svgPath: AppAssets.timeSvg,
                    text: timeSlot,
                    color: AppColors.primaryBlue,
                  ),
                ],
              ),

              const SizedBox(height: AppSpacing.md), // Figma: 12px gap
              // Divider
              const Divider(color: AppColors.divider, thickness: 1),
              const SizedBox(height: AppSpacing.md), // Figma: 12px gap
              // Location and distance
              Row(
                children: [
                  SvgPicture.asset(
                    AppAssets.locationSvg,
                    width: 18,
                    height: 18,
                    colorFilter: const ColorFilter.mode(
                      AppColors.accentGreen,
                      BlendMode.srcIn,
                    ),
                  ),
                  const SizedBox(width: 4),
                  Expanded(
                    child: Text(
                      location,
                      style: AppTypography.badge.copyWith(
                        color: AppColors.accentGreen,
                      ), // Figma: Regular, 13px, gray
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(width: AppSpacing.sm),
                  Text(
                    distance,
                    style: AppTypography.badge.copyWith(
                      color: AppColors.black,
                    ), // Figma: Regular, 13px, gray
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: 16,
          right: 16,
          child: Icon(
            isFavorite ? Icons.favorite : Icons.favorite_border,
            color: isFavorite ? AppColors.accentRed : AppColors.textTertiary,
            size: 20,
          ),
        ),
      ],
    );
  }

  Widget _buildBadge({
    required String svgPath,
    required String text,
    required Color color,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.sm, // Figma: 8px horizontal
        vertical: 6, // Figma: 6px vertical
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6), // Figma: 6px radius
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            svgPath,
            width: 18,
            height: 18,
            colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
          ),
          const SizedBox(width: 4),
          Text(text, style: AppTypography.badge),
        ],
      ),
    );
  }
}
