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
      "iconName": "Books",
      "defaultIcon": Icons.book,
      "activeIcon": Icons.book_outlined,
    },
  ];

  static const Map<dynamic, dynamic> categories = {
    "Games": [
      "For you",
      "Top charts",
      "Kids",
      "Premium",
      "Categories",
    ],
    "Apps": [
      "For you",
      "Top charts",
      "Kids",
      "Categories",
    ],
    "Offers": [],
    "Books": [
      "Ebooks",
      "Audiobooks",
      "Comics",
      "Genres",
      "Top Selling",
      "New releases",
      "Top free"
    ]
  };
}
