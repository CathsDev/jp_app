import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jp_app/src/shared/widgets/glowing_button.dart';

class ChooseFavoriteScreen extends StatefulWidget {
  const ChooseFavoriteScreen({super.key});

  @override
  State<ChooseFavoriteScreen> createState() => _ChooseFavoriteScreenState();
}

class _ChooseFavoriteScreenState extends State<ChooseFavoriteScreen> {
  /* List<String> list = <String>['All categrories', 'Salty', 'Sweet', 'Drink'];
  String dropdownValue = 'All categrories'; */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Hintergrundbild
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
                        /* DropdownButton(
                          items: list.map<DropdownMenuItem<String>>((
                            String value,
                          ) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (String? value) {
                            // This is called when the user selects an item.
                            setState(() {
                              dropdownValue = value!;
                            });
                          },
                        ), */
                        ConstrainedBox(
                          constraints: BoxConstraints(
                            maxHeight: 42,
                            maxWidth: 150,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white.withValues(alpha: 0.05),
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                    color: Colors.white.withValues(alpha: 0.4),
                                    width: 1,
                                  ),
                                ),
                                child: FilledButton(
                                  onPressed: () {},
                                  style: FilledButton.styleFrom(
                                    shape: const StadiumBorder(),
                                    backgroundColor: Colors.transparent,
                                    foregroundColor: Color(0x50FFFFFF),

                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 14,
                                    ),
                                    elevation: 0,
                                    shadowColor: Colors.transparent,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(Icons.folder_open_rounded),
                                      const SizedBox(width: 4),
                                      Text(
                                        'All categories',
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Icon(Icons.expand_more),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
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
                                  'Sweet',
                                  style: TextStyle(
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
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
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 42, 20, 30),
                    height: 330,
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
                                "Feeling Snackish Today?",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.inter(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(height: 8),
                              const Text(
                                "Explore Angi's most popular snack selection and get instantly happy.",
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white70),
                              ),
                              const SizedBox(height: 30),
                              GlowingButton(),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                      child: Container(
                        width: 200,
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
                              "Feeling",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                fontSize: 24,
                                fontWeight: FontWeight.w900,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 8),
                            const Text(
                              "Explore Angi's most popular snack selection and get instantly happy.",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white70),
                            ),
                            const SizedBox(height: 30),
                            GlowingButton(),
                          ],
                        ),
                      ),
                    ),
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
