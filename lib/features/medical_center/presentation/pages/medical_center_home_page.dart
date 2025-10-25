import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/constants/app_assets.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/theme/app_typography.dart';
import '../widgets/action_button_widget.dart';
import '../widgets/appointment_card_widget.dart';
import '../widgets/category_icon_widget.dart';
import '../widgets/doctor_card_widget.dart';
import '../widgets/medical_center_card_widget.dart';
import '../widgets/search_bar_widget.dart';
import '../widgets/section_header_widget.dart';

/// Medical Center home page - main screen of the app
/// Displays appointments, categories, doctors, and medical centers
class MedicalCenterHomePage extends StatelessWidget {
  const MedicalCenterHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBlue,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildHeader(),
              // Scrollable content
              Container(
                decoration: BoxDecoration(
                  color: AppColors.backgroundWhite,
                  borderRadius: BorderRadius.circular(AppSpacing.radiusXLarge),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: AppSpacing.md),
                    const DragHandle(),
                    const SizedBox(height: AppSpacing.md),
                    // Search bar
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppSpacing.screenHorizontal,
                      ),
                      child: SearchBarWidget(
                        onSearchTapped: () {
                          // TODO: Navigate to search screen
                        },
                        onFilterTapped: () {
                          // TODO: Show filter bottom sheet
                        },
                        onScanTapped: () {
                          // TODO: Open camera/image scanner
                        },
                      ),
                    ),

                    const SizedBox(height: AppSpacing.xxl),

                    // Current appointment card
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppSpacing.screenHorizontal,
                      ),
                      child: AppointmentCardWidget(
                        doctorName: 'Jason Smith',
                        specialty: 'Dentist',
                        location: 'ABC Medical Center',
                        date: '7 October 2021',
                        time: '08:00 AM -10:00 AM',
                        onNavigateTap: () {
                          // TODO: Open maps navigation
                        },
                      ),
                    ),

                    const SizedBox(height: AppSpacing.xxl),

                    // Action buttons (Book Doctor/Hospital)
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppSpacing.screenHorizontal,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: ActionButtonWidget(
                              imagePath: AppAssets.doctorAppointmentPng,
                              backgroundColor: AppColors.accentPurpleLight,
                              title: 'Book Doctor Appointment',
                              subtitle: 'Find a Doctor or Specialist',
                              onTap: () {
                                // TODO: Navigate to doctor booking
                              },
                            ),
                          ),
                          const SizedBox(width: AppSpacing.lg),
                          Expanded(
                            child: ActionButtonWidget(
                              imagePath: AppAssets.hospitalAppointmentPng,
                              backgroundColor: AppColors.accentGreenLight,
                              title: 'Book Hospital Appointment',
                              subtitle: 'Locate nearby hospital to visit',
                              onTap: () {
                                // TODO: Navigate to hospital booking
                              },
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: AppSpacing.lg),

                    // Categories section
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppSpacing.screenHorizontal,
                      ),
                      child: SectionHeaderWidget(
                        title: 'Categories',
                        onSeeAllTapped: () {
                          // TODO: Navigate to categories screen
                        },
                      ),
                    ),

                    const SizedBox(height: AppSpacing.lg),

                    // Categories grid
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppSpacing.screenHorizontal,
                      ),
                      child: GridView.count(
                        crossAxisCount: 4,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        mainAxisSpacing: AppSpacing.md,
                        crossAxisSpacing: AppSpacing.sm,
                        children: [
                          CategoryIconWidget(
                            imagePath: AppAssets.generalPng,
                            label: 'General',
                          ),
                          CategoryIconWidget(
                            imagePath: AppAssets.heartPng,
                            label: 'Heart',
                          ),
                          CategoryIconWidget(
                            imagePath: AppAssets.dentistPng,
                            label: 'Dentist',
                          ),
                          CategoryIconWidget(
                            imagePath: AppAssets.skinPng,
                            label: 'Skin',
                          ),
                          CategoryIconWidget(
                            imagePath: AppAssets.stomachPng,
                            label: 'Stomach',
                          ),
                          CategoryIconWidget(
                            imagePath: AppAssets.lungPng,
                            label: 'Lung',
                          ),
                          CategoryIconWidget(
                            imagePath: AppAssets.bonePng,
                            label: 'Bone',
                          ),
                          CategoryIconWidget(
                            imagePath: AppAssets.etnPng,
                            label: 'CTN',
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: AppSpacing.xxl),

                    // Nearest Doctors section
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppSpacing.screenHorizontal,
                      ),
                      child: SectionHeaderWidget(
                        title: 'Nearest Doctors',
                        onSeeAllTapped: () {
                          // TODO: Navigate to doctors list
                        },
                      ),
                    ),

                    const SizedBox(height: AppSpacing.lg),

                    // Doctors list
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppSpacing.screenHorizontal,
                      ),
                      child: Column(
                        children: [
                          DoctorCardWidget(
                            name: 'Clark Mark',
                            specialty: 'Dentist',
                            yearsOfExperience: 4,
                            rating: 4.8,
                            reviewCount: 40,
                            availability: 'Tomorrow',
                            timeSlot: '10:30am-05:00pm',
                            location: 'Horizon Medical Center',
                            distance: '2km Away',
                          ),
                          const SizedBox(height: AppSpacing.md),
                          DoctorCardWidget(
                            name: 'White Mond',
                            specialty: 'Neurologist',
                            yearsOfExperience: 15,
                            rating: 4.9,
                            reviewCount: 440,
                            availability: 'Tomorrow',
                            timeSlot: '10:30am-05:00pm',
                            location: 'Horizon Medical Center',
                            distance: '2km Away',
                            isFavorite: true,
                          ),
                          const SizedBox(height: AppSpacing.md),
                          DoctorCardWidget(
                            name: 'Wilson Herwitz',
                            specialty: 'General Practitioner',
                            yearsOfExperience: 10,
                            rating: 4.9,
                            reviewCount: 440,
                            availability: 'Tomorrow',
                            timeSlot: '10:30am-05:00pm',
                            location: 'Horizon Medical Center',
                            distance: '2km Away',
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: AppSpacing.xxl),

                    // Nearest Medical Centers section
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppSpacing.screenHorizontal,
                      ),
                      child: SectionHeaderWidget(
                        title: 'Nearest Medical Center',
                        onSeeAllTapped: () {
                          // TODO: Navigate to medical centers list
                        },
                      ),
                    ),

                    const SizedBox(height: AppSpacing.lg),

                    // Medical centers horizontal list
                    SizedBox(
                      height: 250, // Figma: Card height + padding
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.symmetric(
                          horizontal: AppSpacing.screenHorizontal,
                        ),
                        children: [
                          MedicalCenterCardWidget(
                            name: 'Tyna Medical Center',
                            location: 'Udomsuk, Bang Na',
                            rating: 4.8,
                            reviewCount: '+2K Review',
                          ),
                          const SizedBox(width: AppSpacing.lg),
                          MedicalCenterCardWidget(
                            name: 'Tyna Medical Center',
                            location: 'Udomsuk, Bang Na',
                            rating: 4.8,
                            reviewCount: '+2K Review',
                          ),
                          const SizedBox(width: AppSpacing.lg),
                          MedicalCenterCardWidget(
                            name: 'Tyna Medical Center',
                            location: 'Udomsuk, Bang Na',
                            rating: 4.8,
                            reviewCount: '+2K Review',
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: AppSpacing.xxl),

                    // Privacy banner
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 30,
                ),
                child: _buildPrivacyBanner(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.screenHorizontal,
        vertical: AppSpacing.lg,
      ),
      decoration: BoxDecoration(
        color: AppColors.primaryBlue,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(AppSpacing.radiusXLarge),
          bottomRight: Radius.circular(AppSpacing.radiusXLarge),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: AppSpacing.xxxl),
        child: Column(
          children: [
            // Title
            Text(
              'Medical Center',
              style: AppTypography.h1.copyWith(
                color: AppColors.textWhite,
                fontSize: 23,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.5,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPrivacyBanner() {
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
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: AppColors.privacyBanner,
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SvgPicture.asset(
                AppAssets.shieldSvg,
                width: 28,
                height: 28,
                colorFilter: const ColorFilter.mode(
                  AppColors.textWhite,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
          const SizedBox(height: AppSpacing.md),
          Text(
            'Information shared via forms is encrypted and can only be viewed by those you share it with.',
            style: AppTypography.bodySmall.copyWith(
              color: AppColors.textWhite,
              fontSize: 13,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class DragHandle extends StatelessWidget {
  const DragHandle({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 60,
        height: 3,
        decoration: BoxDecoration(
          color: AppColors.handleColor,
          borderRadius: BorderRadius.circular(AppSpacing.radiusSmall),
        ),
      ),
    );
  }
}
