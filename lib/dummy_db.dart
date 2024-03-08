import 'package:flutter/material.dart';

class DummyDb {
  static const List<Map<dynamic, dynamic>> bottomNavigationBarItems = [
    {
      "iconName": "Games",
      "defaultIcon": Icons.sports_esports,
      "activeIcon": Icons.sports_esports_outlined,
    },
    {
      "iconName": "Apps",
      "defaultIcon": Icons.grid_view_rounded,
      "activeIcon": Icons.grid_view,
    },
    {
      "iconName": "Offers",
      "defaultIcon": Icons.sell_rounded,
      "activeIcon": Icons.sell_outlined,
    },
    {
      "iconName": "Games",
      "defaultIcon": Icons.book,
      "activeIcon": Icons.book_outlined,
    },
  ];

  static const List gamesCategories = [
    "For you",
    "Top charts",
    "Kids",
    "Premium",
    "For Categories",
  ];
}
