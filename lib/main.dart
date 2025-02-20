import 'package:cash_mobile_v1/features/presentation/screens/home_screen.dart';
import 'package:cash_mobile_v1/features/presentation/screens/login_screen.dart';
import 'package:cash_mobile_v1/features/presentation/screens/verification_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(

        home: HomeScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
