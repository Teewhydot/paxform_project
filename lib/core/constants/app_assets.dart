/// Application asset paths
/// All asset file paths organized by type for easy access
class AppAssets {
  AppAssets._(); // Private constructor to prevent instantiation

  // Base paths
  static const String _pngsPath = 'assets/pngs';
  static const String _svgsPath = 'assets';

  // SVG Icons
  /// Calendar icon for dates and appointments
  static const String calendarSvg = '$_svgsPath/calendar.svg';

  /// Location marker icon
  static const String locationSvg = '$_svgsPath/location.svg';

  /// Send/navigation icon
  static const String sendSvg = '$_svgsPath/send.svg';

  /// Shield icon for security/privacy
  static const String shieldSvg = '$_svgsPath/shield.svg';

  /// Time/clock icon
  static const String timeSvg = '$_svgsPath/time.svg';

  /// Vector SVG
  static const String vectorSvg = '$_svgsPath/vector.svg';

  // Category Icons (PNG)
  /// Bone category icon
  static const String bonePng = '$_pngsPath/bone.png';

  /// Dentist category icon
  static const String dentistPng = '$_pngsPath/dentist.png';

  /// ETN/CTN category icon
  static const String etnPng = '$_pngsPath/etn.png';

  /// General category icon
  static const String generalPng = '$_pngsPath/general.png';

  /// Heart category icon
  static const String heartPng = '$_pngsPath/heart.png';

  /// Lung category icon
  static const String lungPng = '$_pngsPath/lung.png';

  /// Skin category icon
  static const String skinPng = '$_pngsPath/skin.png';

  /// Stomach category icon
  static const String stomachPng = '$_pngsPath/stomach.png';

  // Action/Feature Icons (PNG)
  /// Doctor appointment booking icon
  static const String doctorAppointmentPng =
      '$_pngsPath/doctor_appointment.png';

  /// Hospital appointment booking icon
  static const String hospitalAppointmentPng =
      '$_pngsPath/hospital_appointment.png';

  /// Filter icon for search
  static const String filterPng = '$_pngsPath/filter.png';

  /// Search location/scan icon
  static const String searchLocationPng = '$_pngsPath/search_location.png';

  // Profile/People Images (PNG)
  /// Doctor/person profile image 1
  static const String person1Png = '$_pngsPath/person_1.png';

  /// Doctor/person profile image 2
  static const String person2Png = '$_pngsPath/person_two.png';

  // Location/Building Images (PNG)
  /// Medical center building image
  static const String nearestMedicalCenterPng =
      '$_pngsPath/nearest_medical_center.png';

  // UI Icons (PNG)
  /// Date icon
  static const String datePng = '$_pngsPath/date.png';

  /// Star rating icon
  static const String starPng = '$_pngsPath/star.png';
}
