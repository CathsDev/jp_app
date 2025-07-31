import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jp_app/src/features/choose_favorite/presentation/categorie_button.dart';
import 'package:jp_app/src/features/choose_favorite/presentation/dropdown_button.dart';
import 'package:jp_app/src/features/choose_favorite/presentation/favorite_card.dart';
import 'package:jp_app/src/features/choose_favorite/presentation/recommend_carousel.dart';

class ChooseFavoriteScreen extends StatefulWidget {
  const ChooseFavoriteScreen({super.key});

  @override
  State<ChooseFavoriteScreen> createState() => _ChooseFavoriteScreenState();
}

class _ChooseFavoriteScreenState extends State<ChooseFavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/backgrounds/bg_mainscreen.png',
            fit: BoxFit.cover,
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 55, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Choose Your Favorite',
                    style: GoogleFonts.inter(
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Snack',
                    style: GoogleFonts.inter(
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      spacing: 10,
                      children: [
                        DropdownButtonFake(),
                        ConstrainedBox(
                          constraints: BoxConstraints(
                            minWidth: 90,
                            maxHeight: 42,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                              child: FilledButton(
                                onPressed: () {},
                                style: FilledButton.styleFrom(
                                  shape: const StadiumBorder(),
                                  backgroundColor: Color(
                                    0x80FFFFFF,
                                  ), // transparenter Hintergrund
                                  foregroundColor: Color(
                                    0xFF302C23,
                                  ), // Text- und Iconfarbe
                                  side: BorderSide(
                                    color: Colors.white.withValues(
                                      alpha: 0.4,
                                    ), // weißer Rahmen
                                    width: 1,
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 12,
                                  ),
                                ),
                                child: Text(
                                  'Salty',
                                  style: TextStyle(
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        CategorieButton(),
                        ConstrainedBox(
                          constraints: BoxConstraints(minWidth: 90),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                              child: FilledButton(
                                onPressed: () {},
                                style: FilledButton.styleFrom(
                                  shape: const StadiumBorder(),
                                  backgroundColor: Colors.white.withValues(
                                    alpha: 0.1,
                                  ), // transparenter Hintergrund
                                  foregroundColor: Colors.white.withValues(
                                    alpha: 0.4,
                                  ), // Text- und Iconfarbe
                                  side: BorderSide(
                                    color: Colors.white.withValues(
                                      alpha: 0.4,
                                    ), // weißer Rahmen
                                    width: 1,
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 12,
                                  ),
                                ),
                                child: Text(
                                  'Drinks',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  FavoriteCard(),
                  SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'We Recommend',
                        style: GoogleFonts.inter(
                          fontSize: 15,
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 16),
                      RecommendCarousel(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
