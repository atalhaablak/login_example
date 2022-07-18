import 'package:flutter/material.dart';

import '../../screens/food_app/food_logIn.dart';

class CustomTextField extends StatelessWidget {
  final IconData icon;
  final String hintText;
  const CustomTextField({
    Key? key,
    required this.icon,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Container(
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.white),
              color: Colors.transparent,
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 20),
              child: Center(
                child: TextField(
                  keyboardType: hintText == InputTypes.Email ? TextInputType.emailAddress : TextInputType.text,
                  obscureText: hintText == InputTypes.Password.name ? true : false,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: hintText,
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ),
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: Colors.white),
          child: Icon(
            icon,
            color: Colors.red,
          ),
        ),
      ],
    );
  }
}
