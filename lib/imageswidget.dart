import 'package:flutter/material.dart';

class ImageTiles extends StatelessWidget {
  final String imageAdd;
  ImageTiles({this.imageAdd});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85.0,
      width: 85.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        image: DecorationImage(
          image: AssetImage(imageAdd),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
