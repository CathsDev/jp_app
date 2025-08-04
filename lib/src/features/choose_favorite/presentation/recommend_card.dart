import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jp_app/src/features/show_details/presentation/widgests/size_button_bar.dart';

class RecommendCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String price;
  final String likes;
  final String imagePath;

  const RecommendCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.likes,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        debugPrint('Test $title');
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          backgroundColor: Colors.transparent,
          builder: (BuildContext context) {
            final screenHeight = MediaQuery.of(context).size.height;
            return Stack(
              alignment: Alignment.topCenter,
              children: [
                Positioned(
                  top: 0,
                  right: 0,
                  left: 0,
                  child: Container(
                    color: Colors.transparent,
                    height: screenHeight,
                    child: Padding(
                      padding: EdgeInsets.only(top: 120),
                      child: Container(
                        height: screenHeight,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xFF2F2B22),
                              Color(0xFF2F2B22),
                              Color(0xFF2F2B22),
                              Color(0xFF2F2B22),
                              Color(0xFF2F2B22),
                              Color(0xFF344242),
                              Color(0xFF344242),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(top: 200),
                          child: Column(
                            children: [
                              const Spacer(),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 24.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SingleChoice(),
                                    Row(
                                      children: [
                                        Icon(Icons.remove, color: Colors.white),
                                        SizedBox(width: 8),
                                        Text(
                                          "1",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        SizedBox(width: 8),
                                        Icon(Icons.add, color: Colors.white),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 30),
                              Center(
                                child: Material(
                                  borderRadius: BorderRadius.circular(16),
                                  child: InkWell(
                                    onTap: () {
                                      // Button
                                    },
                                    borderRadius: BorderRadius.circular(16),
                                    child: Ink(
                                      width: 360,
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 14,
                                      ),
                                      decoration: BoxDecoration(
                                        gradient: const LinearGradient(
                                          colors: [
                                            Color(0xFFe970c4),
                                            Color(0xFFf69ea3),
                                          ],
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                        ),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Add to order for ₳ 8.99',
                                          style: GoogleFonts.inter(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              const SizedBox(height: 60),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: -30,
                  right: 0,
                  left: 0,
                  child: Image.asset('assets/images/cupkake_cat.png'),
                ),
                Positioned(
                  top: 280,
                  left: 25,
                  right: 25,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: 0.01),
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            color: Colors.white.withValues(alpha: 0.1),
                            width: 1.5,
                          ),
                        ),
                        padding: const EdgeInsets.all(24),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              title,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                fontSize: 24,
                                fontWeight: FontWeight.w900,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 8),
                            const Text(
                              "Lorem ipsum dolor sit amet consectetur. Non feugiat imperdiet a vel sit at amet. Mi accumsan feugiat magna aliquam feugiat ac et. Pulvinar hendrerit id arcu at sed etiam semper mi hendrerit. Id aliquet quis quam.",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white70),
                            ),
                            const SizedBox(height: 30),
                            Text(
                              price,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 20),
                            Divider(color: const Color(0x80FFFFFF)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      'Ingredients',
                                      style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 11,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.icecream,
                                          color: Colors.white38,
                                          size: 20,
                                        ),
                                        SizedBox(width: 8),
                                        Icon(
                                          Icons.local_cafe,
                                          color: Colors.white38,
                                          size: 20,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'Reviews',
                                      style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 11,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          size: 16,
                                          color: Colors.white70,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 16,
                                          color: Colors.white70,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 16,
                                          color: Colors.white70,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 16,
                                          color: Colors.white70,
                                        ),
                                        Icon(
                                          Icons.star_outline,
                                          size: 16,
                                          color: Colors.white70,
                                        ),
                                        SizedBox(width: 4),

                                        Text(
                                          "4.6",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        );
      },
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 200),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
            child: Container(
              padding: EdgeInsets.fromLTRB(16, 8, 16, 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(45, 255, 255, 255),
                    Color(0xcc908cf5),
                    Color(0xcc8c5bea),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                border: Border.all(color: Colors.white.withValues(alpha: 0.2)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(imagePath, height: 160),
                  SizedBox(height: 12),
                  Text(
                    title,
                    style: GoogleFonts.inter(
                      fontSize: 13,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.white70,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        price,
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.favorite_border,
                            size: 13,
                            color: Colors.white.withValues(alpha: 0.5),
                          ),
                          SizedBox(width: 4),
                          Text(
                            likes,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.white.withValues(alpha: 0.5),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
