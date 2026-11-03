import 'package:flutter/material.dart';

/// Model class representing one fruit sold in the market.
class FruitItem {
  final String name;
  final String origin;
  final String emoji;
  final String category;
  final Color color;
  final int pricePerKg;
  final int calories;
  final bool inSeason;

  const FruitItem({
    required this.name,
    required this.origin,
    required this.emoji,
    required this.category,
    required this.color,
    required this.pricePerKg,
    required this.calories,
    required this.inSeason,
  });
}
