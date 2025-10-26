import 'package:flutter/material.dart';
import '../../../../core/constants/app_assets.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';
import '../widgets/action_button_widget.dart';
import '../widgets/appointment_card_widget.dart';
import '../widgets/category_icon_widget.dart';
import '../widgets/doctor_card_widget.dart';
import '../widgets/drag_handle_widget.dart';
import '../widgets/header_widget.dart';
import '../widgets/medical_center_card_widget.dart';
import '../widgets/privacy_banner_widget.dart';
import '../widgets/search_bar_widget.dart';
import '../widgets/section_header_widget.dart';

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
              const HeaderWidget(),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.backgroundWhite,
                  borderRadius: BorderRadius.circular(AppSpacing.radiusXLarge),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: AppSpacing.md),
                    const DragHandleWidget(),
                    const SizedBox(height: AppSpacing.md),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppSpacing.screenHorizontal,
                      ),
                      child: SearchBarWidget(
                        onSearchTapped: () {},
                        onFilterTapped: () {},
                        onScanTapped: () {},
                      ),
                    ),
                    const SizedBox(height: AppSpacing.xxl),
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
                        onNavigateTap: () {},
                      ),
                    ),
                    const SizedBox(height: AppSpacing.xxl),
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
                              onTap: () {},
                            ),
                          ),
                          const SizedBox(width: AppSpacing.lg),
                          Expanded(
                            child: ActionButtonWidget(
                              imagePath: AppAssets.hospitalAppointmentPng,
                              backgroundColor: AppColors.accentGreenLight,
                              title: 'Book Hospital Appointment',
                              subtitle: 'Locate nearby hospital to visit',
                              onTap: () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: AppSpacing.lg),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppSpacing.screenHorizontal,
                      ),
                      child: SectionHeaderWidget(
                        title: 'Categories',
                        onSeeAllTapped: () {},
                      ),
                    ),
                    const SizedBox(height: AppSpacing.lg),
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
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppSpacing.screenHorizontal,
                      ),
                      child: SectionHeaderWidget(
                        title: 'Nearest Doctors',
                        onSeeAllTapped: () {},
                      ),
                    ),
                    const SizedBox(height: AppSpacing.lg),
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
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppSpacing.screenHorizontal,
                      ),
                      child: SectionHeaderWidget(
                        title: 'Nearest Medical Center',
                        onSeeAllTapped: () {},
                      ),
                    ),
                    const SizedBox(height: AppSpacing.lg),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppSpacing.screenHorizontal,
                      ),
                      child: Row(
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
                    const SizedBox(height: AppSpacing.xxxl),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(AppSpacing.screenHorizontal),
                child: PrivacyBannerWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
