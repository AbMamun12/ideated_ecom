import 'package:flutter/material.dart';
import 'package:ideated_ecom/features/home/widgets/banner_item_widget.dart';
import 'package:ideated_ecom/features/home/widgets/dots_Indicator_Widget.dart';

class BannerCarouselWidget extends StatefulWidget {
  final int currentIndex;
  final Function(int) onPageChanged;

  const BannerCarouselWidget({
    super.key,
    required this.currentIndex,
    required this.onPageChanged,
  });

  @override
  State<BannerCarouselWidget> createState() => _BannerCarouselWidgetState();
}

class _BannerCarouselWidgetState extends State<BannerCarouselWidget> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 180,
          child: PageView(
            controller: _pageController,
            onPageChanged: widget.onPageChanged,
            children: [
              BannerItemWidget(
                discount: '50-40% OFF',
                description: 'Now in products\nAll colors',
              ),
              BannerItemWidget(
                discount: '30-40% OFF',
                description: 'Summer\nCollection',
              ),
              BannerItemWidget(
                discount: '30-40% OFF',
                description: 'Summer\nCollection',
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),
        DotsIndicatorWidget(currentIndex: widget.currentIndex),
      ],
    );
  }
}
