import 'package:flutter/material.dart';

class SocialLoginButton extends StatelessWidget {
  final String imagePath;
  final VoidCallback onPressed;

  const SocialLoginButton({
    super.key,
    required this.imagePath,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 56,
        height: 56,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xFFFCF3F6),
          border: Border.all(color: const Color(0xFFFF4768), width: 2),
        ),
        child: Center(
          child: Icon(_getIcon(), size: 28),
        ),
      ),
    );
  }

  IconData _getIcon() {
    if (imagePath.contains('google')) return Icons.g_mobiledata;
    if (imagePath.contains('apple')) return Icons.apple;
    return Icons.facebook;
  }
}