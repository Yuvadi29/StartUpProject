import 'package:flutter/material.dart';
import 'package:startup/screens/signup.dart';
import 'package:startup/widgets/custom_buttons.dart';
import 'login.dart';
import 'signup.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/background.png"))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // const SizedBox(
            //   height: 120,
            //   width: 180,
            //   child: Image(
            //     image: AssetImage('assets/logo.png'), fit: BoxFit.cover
            //   ),
            // )

            // Buttons for Login Signup
            const SizedBox(height: 40),
            CustomButton(
              buttonText: "LogIn",
              buttonColor: Colors.black,
              textColor: Colors.white,
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => const Login()));
              },
            ),
            CustomButton(
              buttonText: "Register",
              buttonColor: Colors.white,
              textColor: Colors.black,
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => const SignUp()));
              },
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Continue as a Guest",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
