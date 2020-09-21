import 'package:flutter/material.dart';
import 'package:wheels/src/pages/home/home.dart';
import 'package:wheels/src/pages/favorites/favorites.dart';
import 'package:wheels/src/pages/profile/profile.dart';

class BottomNavigation extends ChangeNotifier {
  final currentTab = [
    Home(),
    Favorites(),
    Profile(),
  ];

  int _currentIndex = 0;

  get currentIndex => _currentIndex;

  set currentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}
