import 'package:flutter/material.dart';
import 'package:ideated_ecom/core/constant/asset_paths.dart';
import 'package:ideated_ecom/core/router/app_routes.dart';
import 'package:ideated_ecom/core/colours/app_colours.dart';
import 'onboarding_page.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int _currentPage = 0;
  final int _totalPageCount = 3;

  final List<Map<String, String>> _onboardingData = [
    {
      'image': AssetPaths.onboard1,
      'title': 'Choose Products',
      'description': 'amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
    },
    {
      'image': AssetPaths.onboard2,
      'title': 'Make Payment',
      'description': 'amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
    },
    {
      'image': AssetPaths.onboard3,
      'title': 'Get Your Order',
      'description': 'amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
    },
  ];

  void _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  void _goToNextPage() {
    if (_currentPage < _onboardingData.length - 1) {
      _controller.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    } else {
      _goToLogin();
    }
  }

  void _goToPrevPage() {
    if (_currentPage > 0) {
      _controller.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
  }

  void _goToLogin() {
    Navigator.pushReplacementNamed(context, AppRoutes.login);
  }

  Widget _buildPageCount() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          '${_currentPage + 1}',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          '/${_totalPageCount}',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            color: Colors.black54,
          ),
        ),
      ],
    );
  }

  Widget _buildPrevButton() {
    if (_currentPage == 0) {
      return const SizedBox(width: 50);
    }
    return TextButton(
      onPressed: _goToPrevPage,
      child: Text(
        'Prev',
        style: Theme.of(context).textTheme.titleMedium?.copyWith(
          color: Colors.black54,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }

  Widget _buildNextButton() {
    final String buttonText = _currentPage == _onboardingData.length - 1 ? 'Get Started' : 'Next';

    return TextButton(
      onPressed: _goToNextPage,
      child: Text(
        buttonText,
        style: Theme.of(context).textTheme.titleLarge?.copyWith(
          color: AppColours.primaryColour,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColours.backGroundColour,
      body: Stack(
        children: [
          // 1. PageView
          PageView.builder(
            controller: _controller,
            itemCount: _onboardingData.length,
            onPageChanged: _onPageChanged,
            itemBuilder: (context, index) {
              final item = _onboardingData[index];
              return OnboardingPage(
                image: item['image']!,
                title: item['title']!,
                description: item['description']!,
              );
            },
          ),

          // 2. Header (Page Count and Skip Button)
          Positioned(
            top: MediaQuery.of(context).padding.top + 16,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildPageCount(),
                TextButton(
                  onPressed: _goToLogin,
                  child: Text(
                    'Skip',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),

          // 3. Footer (Prev/Dots/Next Button)
          Positioned(
            bottom: 30,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildPrevButton(),

                // Dots Indicator
                Row(
                  children: List.generate(
                    _onboardingData.length,
                        (index) => AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      margin: const EdgeInsets.only(right: 8),
                      height: 8,
                      width: _currentPage == index ? 24 : 8,
                      decoration: BoxDecoration(
                        color: _currentPage == index
                            ? AppColours.secondaryColour // হাইলাইট কালার
                            : Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),
                ),

                _buildNextButton(), // Next/Get Started বাটন
              ],
            ),
          ),
        ],
      ),
    );
  }
}