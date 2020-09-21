import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wheels/src/provider/bottom_navigation.dart';
import 'package:wheels/src/widgets/app_bar.dart';
import 'package:wheels/src/widgets/bottom_navigation.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<BottomNavigation>(context);
    return Scaffold(
      appBar: buildAppBar(
          context,
          "assets/icons/menu.svg",
          () {},
          IconButton(
            iconSize: 35.0,
            icon: ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: Image.asset(
                "assets/images/profile.jpg",
              ),
            ),
            onPressed: () {},
          )),
      body: provider.currentTab[provider.currentIndex],
      bottomNavigationBar: buildBottomNavigation(provider),
    );
  }
}
