import 'package:flutter/material.dart';

class CategoryItemWidget extends StatelessWidget {
  final String name;
  final String iconPath;
  final VoidCallback? onTap;

  const CategoryItemWidget({
    super.key,
    required this.name,
    required this.iconPath,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: onTap,
            child: CircleAvatar(
              radius: 24,
              backgroundColor: const Color(0xFFF2F2F2),
              backgroundImage: AssetImage(iconPath),
            ),
          ),
          const SizedBox(height: 6),
          Text(
            name,
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
