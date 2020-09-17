import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wheels/src/data/productsData.dart';
import 'package:wheels/src/provider/bottom_navigation.dart';
import 'package:wheels/src/screens/main_screen.dart';
import 'package:wheels/src/utils/constants.dart';

class Wheels extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          builder: (context) => BottomNavigation(),
        ),
        ChangeNotifierProvider(
          builder: (context) => ProductsData(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
        ),
        home: MainScreen(),
      ),
    );
  }
}
