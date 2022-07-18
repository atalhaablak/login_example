import 'package:flutter/material.dart';
import 'package:login_app/screens/food_app/food_logIn.dart';

import 'package:login_app/screens/food_app/food_register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FoodRegisterPage(),
    );
  }
}
