import 'package:flutter/material.dart';
import 'package:ideated_ecom/core/constant/asset_paths.dart';
import 'package:ideated_ecom/features/home/widgets/Product_Item_Widget.dart';

class HorizontalProductList extends StatefulWidget {
  final String title;

  const HorizontalProductList({super.key, required this.title});

  @override
  State<HorizontalProductList> createState() => _HorizontalProductListState();
}

class _HorizontalProductListState extends State<HorizontalProductList> {
  final ScrollController _scrollController = ScrollController();
  bool showLeftArrow = false;
  bool showRightArrow = true;

  final products = [
    {
      'image': AssetPaths.shoes,
      'name': 'Women Printed Kurta',
      'price': '৳1500',
      'originalPrice': '৳3000',
      'rating': 4.5,
      'reviews': 325,
    },
    {
      'image': AssetPaths.shoes,
      'name': 'HRX by Hrithik Roshan',
      'price': '৳2495',
      'originalPrice': '৳4990',
      'rating': 4.2,
      'reviews': 145,
    },
    {
      'image': AssetPaths.shoes,
      'name': 'HRX by Hrithik Roshan',
      'price': '৳2495',
      'originalPrice': '৳4990',
      'rating': 4.2,
      'reviews': 145,
    },
    {
      'image': AssetPaths.shoes,
      'name': 'HRX by Hrithik Roshan',
      'price': '৳2495',
      'originalPrice': '৳4990',
      'rating': 4.2,
      'reviews': 145,
    },
    {
      'image': AssetPaths.shoes,
      'name': 'HRX by Hrithik Roshan',
      'price': '৳2495',
      'originalPrice': '৳4990',
      'rating': 4.2,
      'reviews': 145,
    },
  ];

  void _scrollRight() {
    _scrollController.animateTo(
      _scrollController.offset + 200,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void _scrollLeft() {
    _scrollController.animateTo(
      _scrollController.offset - 200,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      setState(() {
        showLeftArrow = _scrollController.offset > 0;
        showRightArrow =
            _scrollController.offset <
            _scrollController.position.maxScrollExtent;
      });
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: SizedBox(
        height: 250,
        child: Stack(
          children: [
            ListView.separated(
              controller: _scrollController,
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 40),
              itemBuilder: (context, index) {
                return SizedBox(
                  width: 150,
                  child: ProductItemWidget(product: products[index]),
                );
              },
              separatorBuilder: (_, __) => const SizedBox(width: 12),
              itemCount: products.length,
            ),
            if (showLeftArrow)
              Positioned(
                left: 0,
                top: 0,
                bottom: 0,
                child: Center(
                  child: GestureDetector(
                    onTap: _scrollLeft,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.5),
                        shape: BoxShape.circle,
                      ),
                      padding: const EdgeInsets.all(8),
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 16,
                      ),
                    ),
                  ),
                ),
              ),
            // Right Arrow
            if (showRightArrow)
              Positioned(
                right: 0,
                top: 0,
                bottom: 0,
                child: Center(
                  child: GestureDetector(
                    onTap: _scrollRight,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.5),
                        shape: BoxShape.circle,
                      ),
                      padding: const EdgeInsets.all(8),
                      child: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                        size: 16,
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
