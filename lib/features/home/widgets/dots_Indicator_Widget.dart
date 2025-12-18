import 'package:flutter/material.dart';

class DotsIndicatorWidget extends StatelessWidget {
  final int currentIndex;

  const DotsIndicatorWidget({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        3,
            (index) => Container(
          width: 8,
          height: 8,
          margin: const EdgeInsets.symmetric(horizontal: 4),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: index == currentIndex ? Colors.pink.shade200 : Colors.grey[300],
          ),
        ),
      ),
    );
  }
}
