import 'package:flutter/material.dart';
import 'features/medical_center/presentation/pages/medical_center_home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Medical Center',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, fontFamily: 'Public Sans'),
      home: const MedicalCenterHomePage(),
    );
  }
}
