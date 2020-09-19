import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 40.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: TextField(),
      ),
    );
  }
}
