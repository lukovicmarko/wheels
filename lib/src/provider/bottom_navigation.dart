import 'package:flutter/material.dart';
import 'package:wheels/src/pages/home/home.dart';
import 'package:wheels/src/pages/notifications.dart';
import 'package:wheels/src/pages/profile.dart';

class BottomNavigation extends ChangeNotifier {
  final currentTab = [
    Notifications(),
    Home(),
    Profile(),
  ];

  int _currentIndex = 1;

  get currentIndex => _currentIndex;

  set currentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}
