import 'package:flutter/material.dart';
import 'package:ideated_ecom/features/home/widgets/Trending_Product_Item_Widget.dart';

class TrendingProductsWidget extends StatelessWidget {
  const TrendingProductsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Trending Products',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('View all'),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            children: const [
              TrendingProductItemWidget(name: 'IWC Schaffhausen'),
              TrendingProductItemWidget(name: 'Labbin White'),
              TrendingProductItemWidget(name: 'Handilama'),
            ],
          ),
        ),
      ],
    );
  }
}
