import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:startup/widgets/custom_textfield.dart';

import '../widgets/custom_buttons.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: IconButton(
                      icon: Icon(Icons.arrow_back_ios_sharp),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Welcome Back!",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              CustomTextField(
                  myController: emailController,
                  hintText: "Enter your Email",
                  isPassword: false),
              CustomTextField(
                  myController: passwordController,
                  hintText: "Enter your Password",
                  isPassword: true),
              const Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                        color: Color(0xff6A707C),
                        fontSize: 15,
                      ),
                    ),
                  )),
              CustomButton(
                buttonText: "LogIn",
                buttonColor: Colors.black,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const Login()));
                },
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Container(
                      height: 1,
                      width: MediaQuery.of(context).size.height * 0.19,
                      color: Colors.grey,
                    ),
                    const Text("OR Try with"),
                    Container(
                      height: 1,
                      width: MediaQuery.of(context).size.height * 0.18,
                      color: Colors.grey,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: IconButton(
                        icon: Icon(
                          // Icons.facebook,
                          FontAwesomeIcons.apple,
                          color: Colors.black,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: IconButton(
                        icon: Icon(
                          // Icons.face,
                          FontAwesomeIcons.google,
                          color: Colors.red,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: IconButton(
                        icon: Icon(
                          // Icons.facebook,
                          FontAwesomeIcons.facebookF,
                          color: Colors.blue,
                        ),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 140,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(48, 8, 8, 8),
                child: Align(
                  alignment: Alignment.center,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text("         Don't have an account?",
                          style: TextStyle(
                            color: Color(0xff1E232C),
                            fontSize: 15,
                          )),
                      Text("  Register Now",
                          style: TextStyle(
                            color: Color(0xff35C2C1),
                            fontSize: 15,
                          )),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
