import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:loginuicolors/auth_controller.dart';
import 'package:loginuicolors/login_page.dart';
import 'package:loginuicolors/signup_page.dart';
import 'package:loginuicolors/welcome_page.dart';
import 'package:get/get.dart';

Future<void> main() async {
  //Bind App
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value) => Get.put(AuthController()));
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
