import 'package:flutter/material.dart';
import 'package:wheels/src/widgets/app_bar.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        "assets/icons/left-arrow.svg",
        () => Navigator.of(context).pop(),
      ),
    );
  }
}
