import 'package:flutter/material.dart';
import 'package:wheels/src/pages/home.dart';
import 'package:wheels/src/pages/notifications.dart';
import 'package:wheels/src/pages/profile.dart';

class BottomNavigation extends ChangeNotifier {
  final currentTab = [
    Home(),
    Profile(),
    Notifications(),
  ];

  int _currentIndex = 0;

  get currentIndex => _currentIndex;

  set currentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}
