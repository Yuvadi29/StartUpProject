import 'package:flutter/material.dart';
import 'package:loginuicolors/login_page.dart';
import 'package:loginuicolors/signup_page.dart';
import 'package:loginuicolors/welcome_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "InvestoFinder",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: LoginPage()
      // home: SignUpPage(),
      home: LoginPage(),
    );
  }
}
