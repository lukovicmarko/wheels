import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wheels/src/provider/bottom_navigation.dart';
import 'package:wheels/src/utils/constants.dart';
import 'package:wheels/src/widgets/app_bar.dart';
import 'package:wheels/src/widgets/bottom_navigation.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<BottomNavigation>(context);
    return Scaffold(
      appBar: buildAppBar(context),
      body: provider.currentTab[provider.currentIndex],
      bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(canvasColor: kPrimaryColor),
          child: buildBottomNavigation(provider)),
    );
  }
}
