import 'package:flutter/material.dart';
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
      backgroundColor: AppColors.backgroundLight,
      body: SafeArea(
        child: Column(
          children: [
            // Header with title
            _buildHeader(),

            // Scrollable content
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.only(
                  bottom: AppSpacing.xxl, // Bottom padding for scroll
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: AppSpacing.lg),

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

                    const SizedBox(height: AppSpacing.xl),

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
                              icon: Icons.medical_services_outlined,
                              iconColor: AppColors.accentPurple,
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
                              icon: Icons.local_hospital_outlined,
                              iconColor: AppColors.accentGreen,
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

                    const SizedBox(height: AppSpacing.xxl),

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
                            icon: Icons.medication_outlined,
                            label: 'General',
                            iconColor: AppColors.categoryGeneral,
                            backgroundColor:
                                AppColors.categoryGeneral.withOpacity(0.15),
                          ),
                          CategoryIconWidget(
                            icon: Icons.favorite_outline,
                            label: 'Heart',
                            iconColor: AppColors.categoryHeart,
                            backgroundColor:
                                AppColors.categoryHeart.withOpacity(0.15),
                          ),
                          CategoryIconWidget(
                            icon: Icons.medication_liquid_outlined,
                            label: 'Dentist',
                            iconColor: AppColors.categoryDentist,
                            backgroundColor:
                                AppColors.categoryDentist.withOpacity(0.15),
                          ),
                          CategoryIconWidget(
                            icon: Icons.face_outlined,
                            label: 'Skin',
                            iconColor: AppColors.categorySkin,
                            backgroundColor:
                                AppColors.categorySkin.withOpacity(0.15),
                          ),
                          CategoryIconWidget(
                            icon: Icons.monitor_heart_outlined,
                            label: 'Stomach',
                            iconColor: AppColors.categoryStomach,
                            backgroundColor:
                                AppColors.categoryStomach.withOpacity(0.15),
                          ),
                          CategoryIconWidget(
                            icon: Icons.air_outlined,
                            label: 'Lung',
                            iconColor: AppColors.categoryLung,
                            backgroundColor:
                                AppColors.categoryLung.withOpacity(0.15),
                          ),
                          CategoryIconWidget(
                            icon: Icons.accessibility_new_outlined,
                            label: 'Bone',
                            iconColor: AppColors.categoryBone,
                            backgroundColor:
                                AppColors.categoryBone.withOpacity(0.15),
                          ),
                          CategoryIconWidget(
                            icon: Icons.psychology_outlined,
                            label: 'CTN',
                            iconColor: AppColors.categoryCTN,
                            backgroundColor:
                                AppColors.categoryCTN.withOpacity(0.15),
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
                      height: 220, // Figma: Card height + padding
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
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppSpacing.screenHorizontal,
                      ),
                      child: _buildPrivacyBanner(),
                    ),
                  ],
                ),
              ),
            ),
          ],
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
          bottomLeft: Radius.circular(AppSpacing.radiusLarge),
          bottomRight: Radius.circular(AppSpacing.radiusLarge),
        ),
      ),
      child: Column(
        children: [
          // Status bar spacer
          const SizedBox(height: 8),

          // Title
          Text(
            'Medical Center',
            style: AppTypography.h1.copyWith(
              color: AppColors.textWhite,
              fontSize: 18,
            ),
          ),
        ],
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
              color: AppColors.textWhite.withOpacity(0.2),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.shield_outlined,
              size: 28,
              color: AppColors.textWhite,
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
