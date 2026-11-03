import 'package:flutter/material.dart';

/// A reusable pill-shaped label used in the category row.
/// The selected chip is filled; the others are outlined.
class CategoryChip extends StatelessWidget {
  final String label;
  final bool selected;

  const CategoryChip({
    super.key,
    required this.label,
    this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      padding: const EdgeInsets.symmetric(horizontal: 18),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: selected ? Colors.teal[600] : Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.teal.shade200),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: selected ? Colors.white : Colors.teal[800],
        ),
      ),
    );
  }
}
