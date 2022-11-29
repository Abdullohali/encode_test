import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uzum_clone/screens/home/home_page.dart';
import 'package:uzum_clone/screens/homeScreen/home_screen_page.dart';
import 'package:uzum_clone/screens/onboarding/onboarding_page.dart';

import 'const/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, state) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            iconTheme: IconThemeData(color: AppColors.kWhite),
            scaffoldBackgroundColor: AppColors.kWhite,
            backgroundColor: AppColors.kWhite,
            primaryColor: AppColors.kPurple,
          ),
          home: const OnboardingPage(),
        );
      },
    );
  }
}
