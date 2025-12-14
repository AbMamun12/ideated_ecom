import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ideated_ecom/core/colours/app_colours.dart';

class OnboardingPage extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final Color backgroundColor;

  const OnboardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    this.backgroundColor = AppColours.backGroundColour,
  });

  bool get isSvg => image.toLowerCase().endsWith('.svg');

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(flex: 2),
          isSvg
              ? SvgPicture.asset(image, height: 300)
              : Image.asset(image, height: 300),

          const SizedBox(height: 50),

          Text(
            title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),

          const SizedBox(height: 16),

          Text(
            description,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: Colors.black54,
              height: 1.5,
            ),
          ),

          const Spacer(flex: 3),
        ],
      ),
    );
  }
}