import 'dart:ui';

import 'package:flutter/material.dart';

class FavoriteCard extends StatelessWidget {
  const FavoriteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: DiagonalClipper(),
          child: Container(
            height: 260,
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.05), // Border-Farbe
            ),
          ),
        ),
        ClipPath(
          clipper: DiagonalClipper(),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
            child: Container(
              height: 260,
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.01),
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: Colors.white.withValues(alpha: 0.1),
                  width: 1.5,
                ),
              ),
            ),
          ),
        ),
        Positioned.fill(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24, 16, 24, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Linke Spalte
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Angi’s Yummy Burger ",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "Delish vegan burger \nthat tastes like heaven",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFFD9D9D9),
                        ),
                      ),
                      SizedBox(height: 12),
                      Text(
                        '₳ 13.99',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 70),
                      Material(
                        borderRadius: BorderRadius.circular(16),
                        child: InkWell(
                          onTap: () {
                            // Button
                          },
                          borderRadius: BorderRadius.circular(16),
                          child: Ink(
                            width: 90,
                            height: 40,
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [
                                  Color.fromRGBO(144, 140, 245, 1),
                                  Color.fromRGBO(187, 141, 225, 1),
                                ],
                                begin: Alignment.bottomRight,
                                end: Alignment.topLeft,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Center(
                              child: Text(
                                'Add to order',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
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
                // Rechte Spalte
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.star, size: 16, color: Color(0xccEA71C5)),
                        SizedBox(width: 4),
                        Text(
                          '4.8',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
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
        Positioned(
          bottom: 30,
          right: -20,
          child: Image.asset(
            'assets/images/burger.png',
            height: 220,
            fit: BoxFit.contain,
          ),
        ),
      ],
    );
  }
}

class DiagonalClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    const double radius = 30;
    const double slope = 40; // Höhenunterschied der unteren Kante

    final path = Path();

    // Oben links (runde Ecke)
    path.moveTo(0, radius);
    path.quadraticBezierTo(0, 0, radius, 0);

    // Oben rechts (runde Ecke)
    path.lineTo(size.width - radius, 0);
    path.quadraticBezierTo(size.width, 0, size.width, radius);

    // Unten rechts höher (runde Ecke)
    path.lineTo(size.width, size.height - slope - radius);
    path.quadraticBezierTo(
      size.width,
      size.height - slope,
      size.width - radius,
      size.height - slope,
    );

    // Unten links tiefer (runde Ecke)
    path.lineTo(radius, size.height);
    path.quadraticBezierTo(0, size.height, 0, size.height - radius);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
