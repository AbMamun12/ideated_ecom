import 'package:flutter/material.dart';
import 'package:ideated_ecom/core/constant/asset_paths.dart';
import 'package:ideated_ecom/features/home/widgets/Trending_Product_Item_Widget.dart';

class TrendingProductsWidget extends StatelessWidget {
  const TrendingProductsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(8),
          padding: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            color: const Color(0xFFFF708A),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Trending Products',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: const [
                      Icon(
                        Icons.calendar_month_outlined,
                        color: Colors.white,
                        size: 16,
                      ),
                      SizedBox(width: 6),
                      Text(
                        'Last Date 29/02/22',
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                    ],
                  ),
                ],
              ),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.white),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                child: Row(
                  children: const [
                    Text('View all', style: TextStyle(color: Colors.white)),
                    SizedBox(width: 4),
                    Icon(Icons.arrow_forward, color: Colors.white, size: 16),
                  ],
                ),
              ),
            ],
          ),
        ),

        SizedBox(
          height: 260,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 12),
            children: const [
              TrendingProductItemWidget(
                name: 'IWC Schaffhausen 2021 Pilot\'s Watch "SIHH 2019" 44mm',
                image: AssetPaths.watch,
                currentPrice: '650',
                oldPrice: '1599',
                discount: '60% off',
              ),
              TrendingProductItemWidget(
                name: 'Labbin White Sneakers For Men and Female',
                image: AssetPaths.shoes,
                currentPrice: '650',
                oldPrice: '1250',
                discount: '70% off',
              ),
              TrendingProductItemWidget(
                name: 'Mammut Handbag (Set of 3)',
                image: AssetPaths.shoes,
                currentPrice: '750',
                oldPrice: '1999',
                discount: '60% off',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
