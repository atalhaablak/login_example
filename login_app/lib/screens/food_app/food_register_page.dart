import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app/product/icons/food_icon.dart';
import 'package:login_app/screens/food_app/food_logIn.dart';

class FoodRegisterPage extends StatefulWidget {
  const FoodRegisterPage({Key? key}) : super(key: key);

  @override
  State<FoodRegisterPage> createState() => _FoodRegisterPageState();
}

class _FoodRegisterPageState extends State<FoodRegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomCenter, end: Alignment.topCenter, colors: [Colors.pinkAccent, Colors.deepOrangeAccent])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(height: 30),
                  // ICON + HEAD
                  _foodpieHeaders(),
                  SizedBox(height: 50),
                  // SIGN UP HEAD
                  _signUpHead(),
                  SizedBox(height: 50),
                  // Your Name Textfield
                  CustomTextField(icon: Icons.person, hintText: InputTypes.UserName.name),
                  SizedBox(height: 20),
                  // email adress textfield
                  CustomTextField(icon: Icons.email_outlined, hintText: InputTypes.Email.name),
                  SizedBox(height: 20),
                  // password
                  CustomTextField(icon: Icons.key, hintText: InputTypes.Password.name),
                  SizedBox(height: 30),
                  //sign up button
                  SignButton(text: "Sign Up"),
                  // SignButton(text: "Sign Up"),
                  _haveAccount(),
                  SizedBox(height: 50),
                  //already have an account? Login ( text + textbutton)
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Contact For Support",
                        style: GoogleFonts.acme(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      )),
                  // Contact for support text button
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Row _haveAccount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Already have an account?",
          style: GoogleFonts.acme(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              "Login",
              style: GoogleFonts.acme(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
            ))
      ],
    );
  }

  Text _signUpHead() {
    return Text(
      "SIGN UP",
      style: GoogleFonts.acme(
        fontSize: 36,
        decoration: TextDecoration.underline,
        color: Colors.white,
        letterSpacing: 1.5,
      ),
    );
  }

  Row _foodpieHeaders() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FoodIcon(iconSize: 40),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            children: [
              Text("FoodLife",
                  style: GoogleFonts.acme(fontSize: 45, fontWeight: FontWeight.bold, letterSpacing: 4, color: Colors.white)),
              Text("Always Give Better Food Ever", style: GoogleFonts.acme(fontSize: 15, color: Colors.orangeAccent)),
            ],
          ),
        ),
      ],
    );
  }
}
