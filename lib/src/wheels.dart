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
        title: 'Wheels',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          //brightness: Brightness.light,
          fontFamily: 'Nunito',
          textTheme: TextTheme(
            bodyText2: TextStyle(fontSize: 16.0),
          ),
        ),
        home: MainScreen(),
      ),
    );
  }
}
