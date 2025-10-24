import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/theme/app_typography.dart';

/// Appointment card widget showing current/upcoming appointment details
/// Figma: Blue rounded card with doctor info, date, time, and navigation
class AppointmentCardWidget extends StatelessWidget {
  final String doctorName;
  final String specialty;
  final String location;
  final String date;
  final String time;
  final String? profileImageUrl;
  final VoidCallback? onTap;
  final VoidCallback? onNavigateTap;

  const AppointmentCardWidget({
    super.key,
    required this.doctorName,
    required this.specialty,
    required this.location,
    required this.date,
    required this.time,
    this.profileImageUrl,
    this.onTap,
    this.onNavigateTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppSpacing.lg), // Figma: 16px padding
      decoration: BoxDecoration(
        color: AppColors.primaryBlue, // Figma: Blue background
        borderRadius: BorderRadius.circular(
          AppSpacing.radiusLarge, // Figma: 16px radius
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.primaryBlue.withOpacity(0.3),
            offset: const Offset(0, 4),
            blurRadius: 12,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        children: [
          // Doctor info section
          Container(
            padding: const EdgeInsets.all(AppSpacing.md), // Figma: 12px
            decoration: BoxDecoration(
              color: AppColors.backgroundWhite, // Figma: White background
              borderRadius: BorderRadius.circular(
                AppSpacing.radiusMedium, // Figma: 12px radius
              ),
            ),
            child: Row(
              children: [
                // Profile image
                CircleAvatar(
                  radius: 20, // Figma: ~40px diameter
                  backgroundColor: AppColors.backgroundGray,
                  backgroundImage: profileImageUrl != null
                      ? NetworkImage(profileImageUrl!)
                      : null,
                  child: profileImageUrl == null
                      ? Icon(
                          Icons.person,
                          size: 24,
                          color: AppColors.textSecondary,
                        )
                      : null,
                ),
                const SizedBox(width: AppSpacing.md), // Figma: 12px gap

                // Doctor name and details
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        doctorName,
                        style: AppTypography.bodyLarge, // Figma: Semi-bold, 16px
                      ),
                      const SizedBox(height: 2),
                      Text(
                        '$specialty • $location',
                        style: AppTypography.caption.copyWith(
                          color: AppColors.textSecondary,
                        ), // Figma: Regular, 13px, gray
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: AppSpacing.md), // Figma: 12px gap

          // Date and time section
          Row(
            children: [
              // Date
              Expanded(
                child: Row(
                  children: [
                    Icon(
                      Icons.calendar_today,
                      size: 18,
                      color: AppColors.textWhite.withOpacity(0.9),
                    ),
                    const SizedBox(width: AppSpacing.sm), // 8px gap
                    Text(
                      date,
                      style: AppTypography.bodySmall.copyWith(
                        color: AppColors.textWhite,
                      ), // Figma: Regular, 14px, white
                    ),
                  ],
                ),
              ),

              // Navigation button
              InkWell(
                onTap: onNavigateTap,
                borderRadius: BorderRadius.circular(AppSpacing.radiusCircular),
                child: Container(
                  width: 36, // Figma: ~36px
                  height: 36, // Figma: ~36px
                  decoration: BoxDecoration(
                    color: AppColors.backgroundWhite, // Figma: White background
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.navigation,
                    size: 18,
                    color: AppColors.primaryBlue, // Figma: Blue icon
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: AppSpacing.sm), // Figma: 8px gap

          // Time
          Row(
            children: [
              Icon(
                Icons.access_time,
                size: 18,
                color: AppColors.textWhite.withOpacity(0.9),
              ),
              const SizedBox(width: AppSpacing.sm), // 8px gap
              Text(
                time,
                style: AppTypography.bodySmall.copyWith(
                  color: AppColors.textWhite,
                ), // Figma: Regular, 14px, white
              ),
            ],
          ),

          const SizedBox(height: AppSpacing.md), // Figma: 12px gap

          // Pagination dots
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildDot(isActive: true),
              const SizedBox(width: 6),
              _buildDot(isActive: false),
              const SizedBox(width: 6),
              _buildDot(isActive: false),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDot({required bool isActive}) {
    return Container(
      width: isActive ? 24 : 6, // Figma: Active dot is wider
      height: 6,
      decoration: BoxDecoration(
        color: isActive
            ? AppColors.textWhite // Figma: White for active
            : AppColors.textWhite.withOpacity(0.4), // Figma: Transparent for inactive
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
