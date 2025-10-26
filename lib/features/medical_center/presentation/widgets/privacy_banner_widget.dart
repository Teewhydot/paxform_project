import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/constants/app_assets.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/theme/app_typography.dart';

class PrivacyBannerWidget extends StatelessWidget {
  const PrivacyBannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppSpacing.xl),
      decoration: BoxDecoration(
        color: AppColors.primaryBlue,
        borderRadius: BorderRadius.circular(AppSpacing.radiusMedium),
      ),
      child: Column(
        children: [
          Container(
            width: 52,
            height: 52,
            decoration: const BoxDecoration(
              color: AppColors.privacyBanner,
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SvgPicture.asset(
                AppAssets.shieldSvg,
                width: 32,
                height: 32,
              ),
            ),
          ),
          const SizedBox(height: AppSpacing.md),
          Text(
            'Information shared via forms is encrypted and can only be viewed by those you share it with.',
            style: AppTypography.bodySmall.copyWith(
              color: AppColors.textWhite,
              fontSize: 16,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.5,
              height: 1.68,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
