import 'package:flutter/material.dart';
import 'package:startup/widgets/custom_buttons.dart';

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
            CustomButton(
              buttonText: "LogIn",
              buttonColor: Colors.black,
              textColor: Colors.white,
              onPressed: () {},
            ),
            CustomButton(
              buttonText: "SignUp",
              buttonColor: Colors.black,
              textColor: Colors.white,
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
