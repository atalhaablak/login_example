import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app/product/foodpie_icon.dart';
import 'package:login_app/product/icons/food_icon.dart';

class FoodAppSignIn extends StatelessWidget {
  const FoodAppSignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomCenter, end: Alignment.topCenter, colors: [Colors.pinkAccent, Colors.deepOrangeAccent])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(height: 30),
                  // ICON
                  FoodIcon(iconSize: 100),
                  const SizedBox(height: 35),

                  // FoodPie title
                  Text("FoodLife",
                      style: GoogleFonts.acme(fontSize: 60, fontWeight: FontWeight.bold, letterSpacing: 4, color: Colors.white)),

                  // Always Give Better Food Ever - subtitle
                  Text("Always Give Better Food Ever", style: GoogleFonts.acme(fontSize: 18, color: Colors.orangeAccent)),
                  const SizedBox(height: 50),

                  // username textfiel
                  CustomTextField(hintText: InputTypes.UserName.name, icon: Icons.person),
                  const SizedBox(height: 30),

                  // Password textfield
                  CustomTextField(hintText: InputTypes.Password.name, icon: Icons.key),
                  const SizedBox(height: 30),

                  // login button
                  SignButton(
                    text: "Sign In",
                  ),

                  // Don't have a account? Sign Up Now - Row(text + textbutton)
                  _dontHaveAccount(),
                  const SizedBox(height: 50),

                  // Forgot Password textbutton
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot Password?",
                        style: GoogleFonts.acme(fontSize: 16, color: Colors.white),
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Row _dontHaveAccount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account?",
          style: GoogleFonts.acme(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              "Sign Up Now",
              style: GoogleFonts.acme(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
            ))
      ],
    );
  }
}

class SignButton extends StatelessWidget {
  final String text;
  const SignButton({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          minimumSize: Size(MediaQuery.of(context).size.width * 0.82, 60),
          primary: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30)))),
      onPressed: () {},
      child: Text(
        text,
        style: GoogleFonts.acme(
          fontSize: 18,
          color: Colors.pink,
        ),
      ),
    );
  }
}

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

enum InputTypes { UserName, Email, Password }
