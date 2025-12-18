import 'package:flutter/material.dart';
import 'package:ideated_ecom/features/home/widgets/All_Featured_Widget.dart';
import 'package:ideated_ecom/features/home/widgets/Bottom_Navigation_Widget.dart';
import 'package:ideated_ecom/features/home/widgets/Deal_of_the_Day_Widget.dart';
import 'package:ideated_ecom/features/home/widgets/Flat_And_Heel_Banner_widget.dart';
import 'package:ideated_ecom/features/home/widgets/Hot_Sale_Widget.dart';
import 'package:ideated_ecom/features/home/widgets/Product_Grid_Widget.dart';
import 'package:ideated_ecom/features/home/widgets/Search_Bar_Widget.dart';
import 'package:ideated_ecom/features/home/widgets/Special_Offer_Widget.dart';
import 'package:ideated_ecom/features/home/widgets/Sponsored_Widget.dart';
import 'package:ideated_ecom/features/home/widgets/Trending_Products_Widget.dart';
import 'package:ideated_ecom/features/home/widgets/app_bar_widget.dart';
import 'package:ideated_ecom/features/home/widgets/banner_Carousel_Widget.dart';
import 'package:ideated_ecom/features/home/widgets/category_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  int _currentBannerIndex = 0;
  int _selectedBottomNav = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: const AppBarWidget(),
      body: SingleChildScrollView(


        child: Column(

          children: [
            const SearchBarWidget(),
            const AllFeaturedWidget(),
            const CategoryWidget(),
            const SizedBox(height: 16),
            BannerCarouselWidget(
              currentIndex: _currentBannerIndex,
              onPageChanged: (index) {
                setState(() => _currentBannerIndex = index);
              },
            ),
            const SizedBox(height: 16),
            const DealOfTheDayWidget(),
            const SizedBox(height: 16),
            const HorizontalProductList(title: 'Deal of the Day'),
            const SizedBox(height: 24),
            const SpecialOffersWidget(),
            const SizedBox(height: 24),
             FlatAndHeelsBanner(),
            const SizedBox(height: 24),
            const TrendingProductsWidget(),
            const SizedBox(height: 24),
            const HotSaleWidget(),
                    const SizedBox(height: 24),
            const SponsoredWidget(),
            const SizedBox(height: 16),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavWidget(
        currentIndex: _selectedBottomNav,
        onTap: (index) {
          setState(() => _selectedBottomNav = index);
        },
      ),
    );
  }
}
