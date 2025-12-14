import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ideated_ecom/core/colours/app_colours.dart';
import 'package:ideated_ecom/core/constant/asset_paths.dart';
import 'package:ideated_ecom/core/router/app_routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, AppRoutes.onboarding);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColours.backGroundColour,
      body: Center(
        child: SvgPicture.asset(
          AssetPaths.splash,
          width: 120,
        ),
      ),    );
  }
}
