import 'package:flutter/material.dart';

/// A reusable rounded-square [Container] that shows a fruit emoji
/// on a light tint of the fruit's own color.
class FruitAvatar extends StatelessWidget {
  final String emoji;
  final Color color;

  const FruitAvatar({
    super.key,
    required this.emoji,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Text(emoji, style: const TextStyle(fontSize: 32)),
    );
  }
}
