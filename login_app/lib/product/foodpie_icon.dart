import 'package:flutter/material.dart';

class FoodPieIcon extends StatelessWidget {
  const FoodPieIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.pink.shade200,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Padding(
          padding: EdgeInsets.all(25),
          child: Icon(Icons.fastfood_rounded, size: 100),
        ));
  }
}
