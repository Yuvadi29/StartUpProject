import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:startup/screens/welcome.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final String? userName = FirebaseAuth.instance.currentUser?.displayName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Investor Point"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/2.png",
            height: 500.0,
          ),
          const SizedBox(height: 32.0),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Get Started"),
            style: ElevatedButton.styleFrom(
              primary: Colors.black,
              onPrimary: Colors.white,
              padding: const EdgeInsets.symmetric(
                vertical: 16.0,
                horizontal: 64.0,
              ),
              textStyle: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 32.0),
          ElevatedButton(
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              if (!mounted) return;
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const WelcomeScreen();
              }));
            },
            child: const Text("Sign Out"),
          ),
        ],
      ),
    );
  }
}
