import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Column(
      children: [
        Container(
          width: w,
          height: h * 0.3,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("img/loginimg.png"),
          )),
        ),
        Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
          width: w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello",
                style: TextStyle(
                  fontSize: 70,
                  fontWeight: FontWeight.bold
                ),
              ),
              Text(
                "Sign in",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.pinkAccent[200],
                ),
              ),
              SizedBox(height: 50,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[20],
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      spreadRadius: 7,
                      offset: Offset(1,1),
                        color: Colors.grey.withOpacity(0.4)
                    )
                  ]
                ),
                child: TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 1.0
                      )
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 1.0,
                      )
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)
                    )
                  ),
                ),
              )
            ],
          ),
        )
      ],
    )
    );
  }
}
