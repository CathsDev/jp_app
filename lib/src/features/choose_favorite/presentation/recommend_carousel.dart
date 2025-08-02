import 'package:flutter/material.dart';
import 'package:jp_app/src/features/choose_favorite/presentation/recommend_card.dart';

class RecommendCarousel extends StatelessWidget {
  const RecommendCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        spacing: 24,
        children: [
          RecommendCard(
            title: "Mogli's Cup",
            subtitle: 'Strawberry ice cream',
            price: '₳ 8.99',
            likes: '200',
            imagePath: 'assets/images/cupkake_cat.png',
          ),
          RecommendCard(
            title: "Balu’s Cup",
            subtitle: "Pistachio ice cream",
            price: '₳ 8.99',
            likes: '165',
            imagePath: 'assets/images/icecream.png',
          ),
        ],
      ),
    );
  }
}
