import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:uji_proyek_2/features/authentication/screeens/login/login.dart';
import 'package:uji_proyek_2/features/authentication/screeens/onboarding/onboarding.dart';
// import 'package:uji_proyek_2/features/authentication/screeens/onboarding/onboarding.dart';
import 'package:uji_proyek_2/utils/theme/theme.dart';

/// -- use this class to setup bindings, any animation and much
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      // theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}
