import 'dart:ui';

import 'package:flutter/material.dart';

class DropdownButtonFake extends StatelessWidget {
  const DropdownButtonFake({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: 42, maxWidth: 150),
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

                padding: const EdgeInsets.symmetric(horizontal: 14),
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
    );
  }
}
