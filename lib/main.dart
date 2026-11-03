import 'package:flutter/material.dart';
import 'screens/market_home_screen.dart';

void main() {
  runApp(const FruitMarketApp());
}

/// Root widget of the Fruit Market application.
class FruitMarketApp extends StatelessWidget {
  const FruitMarketApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fruit Market',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.teal,
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF6F8F7),
      ),
      // Keep a phone-sized layout centred on wide (desktop/web) screens
      builder: (context, child) {
        return ColoredBox(
          color: const Color(0xFFDDE5E2),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 420),
              child: child,
            ),
          ),
        );
      },
      home: const MarketHomeScreen(),
    );
  }
}
