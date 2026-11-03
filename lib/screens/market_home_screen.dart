import 'package:flutter/material.dart';
import '../data/market_data.dart';
import '../widgets/category_chip.dart';
import '../widgets/fruit_tile.dart';

/// Home screen of the Fruit Market application.
///
/// Built from a [Column] holding a welcome banner, a horizontal
/// [ListView] of categories and a vertical [ListView] of fruit tiles.
class MarketHomeScreen extends StatelessWidget {
  const MarketHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final fruits = MarketData.fruits;
    final int seasonalCount = fruits.where((f) => f.inSeason).length;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Fresh Fruit Market',
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        backgroundColor: Colors.teal[600],
        foregroundColor: Colors.white,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.shopping_basket_outlined),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Welcome banner
          Container(
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.teal[600]!, Colors.teal[300]!],
              ),
              borderRadius: BorderRadius.circular(18),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Farm fresh, every day',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '$seasonalCount of ${fruits.length} fruits are in season',
                        style: const TextStyle(color: Colors.white70),
                      ),
                    ],
                  ),
                ),
                const Text('🧺', style: TextStyle(fontSize: 42)),
              ],
            ),
          ),
          // Horizontal list of categories
          SizedBox(
            height: 40,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: MarketData.categories.length,
              itemBuilder: (context, index) {
                return CategoryChip(
                  label: MarketData.categories[index],
                  selected: index == 0,
                );
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 16, 8),
            child: Text(
              'Today\'s Fruits',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          // Vertical list of fruits
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              itemCount: fruits.length,
              separatorBuilder: (context, index) => const SizedBox(height: 10),
              itemBuilder: (context, index) {
                return FruitTile(fruit: fruits[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
