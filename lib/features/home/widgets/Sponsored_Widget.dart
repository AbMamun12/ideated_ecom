import 'package:flutter/material.dart';
import 'package:ideated_ecom/core/constant/asset_paths.dart';

class SponsoredWidget extends StatelessWidget {
  const SponsoredWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(5),
            child: Text(
              'Sponsored',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),
          Column(
            children: [
              ClipRRect(
                child: Image.asset(
                  AssetPaths.Sponserd,
                  width: double.infinity,

                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      'Up to 50% off',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                    color: Colors.black.withOpacity(0.8),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}