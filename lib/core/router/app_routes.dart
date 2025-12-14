import 'package:flutter/material.dart';
import 'package:ideated_ecom/features/auth/login_screen.dart';
import 'package:ideated_ecom/features/onboarding/onboarding_screen.dart';
import 'package:ideated_ecom/features/splash/splash_screen.dart';

class AppRoutes {
  static const splash = '/';
  static const onboarding = '/onboarding';
  static const login = '/login';

  static Map<String, WidgetBuilder> routes = {
    splash: (_) => const SplashScreen(),
    onboarding: (_) => const OnboardingScreen(),
    login: (_) => const LoginScreen(),
  };
}
