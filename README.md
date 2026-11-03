# Fruit Market App Using Flutter

Experiment 1: Building Applications using Flutter.

A Flutter app that lists the fruits available in a market. It uses a data
model, reusable widgets and Material 3 layout widgets such as `Card`, `Row`,
`Column`, `Container` and `ListView`.

## Features

- Welcome banner showing how many fruits are in season
- Horizontal list of category chips
- Scrollable list of 10 Indian fruits with place of origin, calories,
  in-season / off-season badge and price per kg in ₹

## Project structure

```
lib/
├── main.dart                         # App entry point and theme
├── models/fruit_item.dart            # FruitItem data model
├── data/market_data.dart             # Categories and fruit list
├── screens/market_home_screen.dart   # Home screen
└── widgets/
    ├── fruit_tile.dart               # Card for one fruit
    ├── fruit_avatar.dart             # Emoji avatar
    ├── category_chip.dart            # Category pill
    └── season_badge.dart             # In season / off season badge
```

## Run

```bash
flutter pub get
flutter run -d chrome
```
