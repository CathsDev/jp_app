import 'dart:ui';

import 'package:flutter/material.dart';

class CategorieButton extends StatelessWidget {
  const CategorieButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
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
                color: Colors.white.withValues(alpha: 0.4), // weißer Rahmen
                width: 1,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            ),
            child: Text(
              'Sweet',
              style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ),
    );
  }
}
