import 'package:flutter/material.dart';
import 'package:ideated_ecom/features/home/widgets/category_item_widget.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = [
      {'name': 'Beauty', 'icon': '👗'},
      {'name': 'Fashion', 'icon': '👔'},
      {'name': 'Kids', 'icon': '👶'},
      {'name': 'Mens', 'icon': '👨'},
      {'name': 'Womens', 'icon': '👩'},
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: SizedBox(
        height: 100,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryItemWidget(
              name: categories[index]['name']!,
              icon: categories[index]['icon']!,
            );
          },
        ),
      ),
    );
  }
}