import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jp_app/src/features/choose_favorite/presentation/choose_favorite_screen.dart';

class GlowingButton extends StatelessWidget {
  const GlowingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      /* child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () {},
            child: const Text('Enabled'),
          ),
        ],
      ), */
      child: Material(
        borderRadius: BorderRadius.circular(16),
        child: InkWell(
          onTap: () {
            // Button
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ChooseFavoriteScreen(),
              ),
            );
          },
          borderRadius: BorderRadius.circular(16),
          child: Ink(
            width: 220,
            padding: const EdgeInsets.symmetric(vertical: 14),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Color(0xFFe970c4), Color(0xFFf69ea3)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Text(
                'Order Now',
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
    );
  }
}
