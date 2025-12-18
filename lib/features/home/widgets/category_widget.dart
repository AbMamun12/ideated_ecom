import 'package:flutter/material.dart';
import 'package:ideated_ecom/core/constant/asset_paths.dart';
import 'package:ideated_ecom/features/home/widgets/category_item_widget.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> categories = [
      {'name': 'Beauty', 'icon': AssetPaths.beauty},
      {'name': 'Fashion', 'icon': AssetPaths.fashion},
      {'name': 'Kids', 'icon': AssetPaths.kids},
      {'name': 'Mens', 'icon': AssetPaths.mens},
      {'name': 'Womens', 'icon': AssetPaths.womens},
      {'name': 'Womens', 'icon': AssetPaths.womens},
      {'name': 'Womens', 'icon': AssetPaths.womens},
      {'name': 'Womens', 'icon': AssetPaths.womens},
      {'name': 'Womens', 'icon': AssetPaths.womens},
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8,),

      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,

        ),

        height: 80,
        child: ListView.builder(
          padding: const EdgeInsets.all(4),
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryItemWidget(
              name: categories[index]['name']!,
              iconPath: categories[index]['icon']!,
              onTap: () {
                // TODO: future category action
                debugPrint('${categories[index]['name']} tapped');
              },
            );
          },
        ),
      ),
    );
  }
}
