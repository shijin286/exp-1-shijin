import 'package:flutter/material.dart';
import '../models/fruit_item.dart';
import 'fruit_avatar.dart';
import 'season_badge.dart';

/// A reusable [Card] that shows one fruit: avatar, name, origin,
/// calories, season badge and price per kg.
class FruitTile extends StatelessWidget {
  final FruitItem fruit;

  const FruitTile({super.key, required this.fruit});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      elevation: 1,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            FruitAvatar(emoji: fruit.emoji, color: fruit.color),
            const SizedBox(width: 14),
            // Name, origin and details stacked vertically
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    fruit.name,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Row(
                    children: [
                      Icon(Icons.place_outlined,
                          size: 14, color: Colors.grey[600]),
                      const SizedBox(width: 2),
                      Flexible(
                        child: Text(
                          fruit.origin,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[600],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      SeasonBadge(inSeason: fruit.inSeason),
                      const SizedBox(width: 8),
                      Text(
                        '${fruit.calories} kcal',
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.grey[700],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Price column on the right
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '₹${fruit.pricePerKg}',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal[700],
                  ),
                ),
                Text(
                  'per kg',
                  style: TextStyle(fontSize: 11, color: Colors.grey[600]),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
