import 'package:flutter/material.dart';

/// A small reusable badge that says whether a fruit is in season.
class SeasonBadge extends StatelessWidget {
  final bool inSeason;

  const SeasonBadge({super.key, required this.inSeason});

  @override
  Widget build(BuildContext context) {
    final Color color = inSeason ? Colors.green : Colors.orange;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        inSeason ? 'In season' : 'Off season',
        style: TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w600,
          color: inSeason ? Colors.green[800] : Colors.orange[800],
        ),
      ),
    );
  }
}
