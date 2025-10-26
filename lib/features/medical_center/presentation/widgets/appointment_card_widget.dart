import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/constants/app_assets.dart';
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
    return Stack(
      clipBehavior: Clip.none,
      children: [
        /// Vector SVG
        Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(
                AppSpacing.lg,
              ), // Figma: 16px padding
              decoration: BoxDecoration(
                color: AppColors.cardBlue, // Figma: Blue background
                borderRadius: BorderRadius.circular(
                  AppSpacing.radiusLarge, // Figma: 16px radius
                ),
                // boxShadow: [
                //   BoxShadow(
                //     color: AppColors.primaryBlue,
                //     offset: const Offset(0, 4),
                //     blurRadius: 12,
                //     spreadRadius: 0,
                //   ),
                // ],
              ),
              child: Column(
                children: [
                  // Doctor info section
                  Container(
                    padding: const EdgeInsets.all(AppSpacing.md), // Figma: 12px
                    decoration: BoxDecoration(
                      color:
                          AppColors.backgroundWhite, // Figma: White background
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
                              : AssetImage(AppAssets.person1Png)
                                    as ImageProvider,
                        ),
                        const SizedBox(width: AppSpacing.md), // Figma: 12px gap
                        // Doctor name and details
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                doctorName,
                                style: AppTypography
                                    .bodyLarge, // Figma: Semi-bold, 16px
                              ),
                              const SizedBox(height: 2),
                              Text(
                                '$specialty • $location',
                                style: AppTypography.caption.copyWith(
                                  color: AppColors.black,
                                ), // Figma: Regular, 13px, gray
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: AppSpacing.xl),
                  // Date and time section
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          spacing: AppSpacing.md,
                          children: [
                            Row(
                              children: [
                                // Date
                                Expanded(
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                        AppAssets.calendarSvg,
                                        width: 18,
                                        height: 18,
                                        colorFilter: ColorFilter.mode(
                                          AppColors.textWhite.withValues(
                                            alpha: 0.9,
                                          ),
                                          BlendMode.srcIn,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: AppSpacing.sm,
                                      ), // 8px gap
                                      Text(
                                        date,
                                        style: AppTypography.bodySmall.copyWith(
                                          color: AppColors.textWhite,
                                          fontWeight: FontWeight.w600,
                                        ), // Figma: Regular, 14px, white
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),

                            // Time
                            Row(
                              children: [
                                SvgPicture.asset(
                                  AppAssets.timeSvg,
                                  width: 18,
                                  height: 18,
                                  colorFilter: ColorFilter.mode(
                                    AppColors.textWhite.withValues(alpha: 0.9),
                                    BlendMode.srcIn,
                                  ),
                                ),
                                const SizedBox(width: AppSpacing.sm), // 8px gap
                                Text(
                                  time,
                                  style: AppTypography.bodySmall.copyWith(
                                    color: AppColors.textWhite,
                                    fontWeight: FontWeight.w600,
                                  ), // Figma: Regular, 14px, white
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      // Navigation button
                      InkWell(
                        onTap: onNavigateTap,
                        borderRadius: BorderRadius.circular(
                          AppSpacing.radiusCircular,
                        ),
                        child: Container(
                          width: 50, // Figma: ~36px
                          height: 50, // Figma: ~36px
                          decoration: BoxDecoration(
                            color: AppColors
                                .backgroundWhite, // Figma: White background
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Center(
                              child: SvgPicture.asset(
                                AppAssets.sendSvg,
                                width: 24,
                                height: 24,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: AppSpacing.md), // Figma: 12px gap
                  // Pagination dots
                ],
              ),
            ),
            const SizedBox(height: AppSpacing.md), // Figma: 12px gap
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
        Positioned(
          bottom: -50,
          left: -40,
          right: 0,
          child: SvgPicture.asset(
            AppAssets.vectorSvg,
            width: double.infinity,
            height: 143,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }

  Widget _buildDot({required bool isActive}) {
    return Container(
      width: isActive ? 15 : 15, // Figma: Active dot is wider
      height: 2,
      decoration: BoxDecoration(
        color: isActive
            ? AppColors
                  .primaryBlue // Figma: White for active
            : AppColors.primaryBlue.withValues(
                alpha: 0.2,
              ), // Figma: Transparent for inactive
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
