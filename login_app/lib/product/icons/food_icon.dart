import 'package:flutter/material.dart';

class FoodIcon extends StatelessWidget {
  final double iconSize;
  const FoodIcon({Key? key, required this.iconSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.pink.shade200,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: EdgeInsets.all(25),
          child: Icon(Icons.fastfood_rounded, size: iconSize),
        ));
  }
}
