import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ideated_ecom/core/constant/asset_paths.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,

      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircleAvatar(
          backgroundColor: const Color(0xFFF2F2F2),
          child: IconButton(
            icon: const Icon(Icons.sort, color: Colors.black, size: 20),
            onPressed: () {},
          ),
        ),
      ),

      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            AssetPaths.logo,
            height: 26,
          ),
          const SizedBox(width: 6),
          const Text(
            'Stylish',
            style: TextStyle(
              color: Color(0xFF4392F9),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),

      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 12),
          child: GestureDetector(
            onTap: () {
              // TODO: future action
            },
            child: CircleAvatar(
              radius: 18,
              backgroundImage: AssetImage(AssetPaths.profile),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
