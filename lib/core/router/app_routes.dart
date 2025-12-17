import 'package:flutter/material.dart';
import 'package:ideated_ecom/features/auth/views/get_start.dart';
import 'package:ideated_ecom/features/auth/views/login_screen.dart';
import 'package:ideated_ecom/features/onboarding/onboarding_screen.dart';
import 'package:ideated_ecom/features/splash/splash_screen.dart';

class AppRoutes {
  static const splash = '/';
  static const onboarding = '/onboarding';
  static const login = '/login';
  static const getStart = '/getStart';


  static Map<String, WidgetBuilder> routes = {
    splash: (_) => const SplashScreen(),
    onboarding: (_) => const OnboardingScreen(),
    login: (_) => const LoginScreen(),
    getStart: (_) => const GetStart(),


  };
}
