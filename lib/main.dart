import 'package:flutter/material.dart';
import 'package:homefy/core/theme/application_theme.dart';
import 'package:homefy/pages/login_screen/login_screen.dart';
import 'package:homefy/pages/onBoarding_screens/on_boarding_screens.dart';
import 'package:homefy/pages/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ApplicationTheme.theme,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => const SplashScreen(),
        OnBoarding.routeName: (context) => const OnBoarding(),
        LoginScreen.routeName: (context) => const LoginScreen(),
      },
    );
  }
}
