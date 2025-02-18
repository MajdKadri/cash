import 'package:cash_mobile_v1/features/presentation/screens/login_screen.dart';
import 'package:cash_mobile_v1/features/presentation/screens/verification_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: VerificationScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
