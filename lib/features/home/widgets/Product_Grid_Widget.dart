import 'package:flutter/material.dart';
import 'package:ideated_ecom/features/home/widgets/Product_Item_Widget.dart';

class ProductGridWidget extends StatelessWidget {
  final String title;

  const ProductGridWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final products = [
      {
        'image': 'assets/kurta.jpg',
        'name': 'Women Printed Kurta',
        'price': '₹1500',
        'originalPrice': '₹3000',
        'rating': 4.5,
        'reviews': 325,
      },
      {
        'image': 'assets/shoes.jpg',
        'name': 'HRX by Hrithik Roshan',
        'price': '₹2495',
        'originalPrice': '₹4990',
        'rating': 4.2,
        'reviews': 145,
      },
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ProductItemWidget(product: products[index]);
        },
      ),
    );
  }
}
