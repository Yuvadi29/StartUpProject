import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginuicolors/auth_controller.dart';


class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
    //Socials Images
    List images = [
      "g.png",
      "t.png",
      "f.png",
    ];

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
                  image: AssetImage("img/signup.png"), fit: BoxFit.cover)),
          child: Column(
            children: [
              SizedBox(
                height: h * 0.18,
              ),
              CircleAvatar(
                backgroundColor: Colors.white70,
                radius: 50,
                backgroundImage: AssetImage("img/profile.png"),
              )
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
          width: w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello",
                style: TextStyle(fontSize: 70, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey[20],
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 7,
                          offset: Offset(1, 1),
                          color: Colors.grey.withOpacity(0.4))
                    ]),
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    hintText: "Enter your Email Id",
                      prefixIcon: Icon(Icons.email, color: Colors.pinkAccent,) ,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              BorderSide(color: Colors.white, width: 1.0)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 1.0,
                          )),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey[20],
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 7,
                          offset: Offset(1, 1),
                          color: Colors.grey.withOpacity(0.4))
                    ]),
                child: TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter your Password",
                      prefixIcon: Icon(Icons.password, color: Colors.pinkAccent,),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              BorderSide(color: Colors.white, width: 1.0)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 1.0,
                          )),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              // Row(
              //   children: [
              //     Expanded(
              //       child: Container(),
              //     ),
              //     Text(
              //       "Sign in",
              //       style: TextStyle(
              //         fontSize: 20,
              //         color: Colors.pinkAccent[200],
              //       ),
              //     ),
              //   ],
              // )s
            ],
          ),
        ),
        SizedBox(
          height: 70,
        ),
        GestureDetector(
          onTap: (){
            AuthController.instance.register(emailController.text.trim(), passwordController.text.trim());
          },
          child: Container(
            width: w * 0.5,
            height: h * 0.08,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                    image: AssetImage("img/loginbtn.png"), fit: BoxFit.cover)),
            child: Center(
              child: Text(
                "Sign Up",
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 10,),
        RichText(
            text: TextSpan(
              recognizer: TapGestureRecognizer()..onTap=()=>Get.back(),
              text: "Already have an account?",
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey[500]
              )
            )
        ),
        SizedBox(height: w * 0.2),
        RichText(
            text: TextSpan(
                text: "SignUp with Socials",
                style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 16,
                ),
            )
        ),

        Wrap(
          children: List<Widget>.generate(
    3,
    (index){
            return CircleAvatar(
              radius: 20,
              backgroundColor: Colors.grey[200],

              child: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.grey,
                backgroundImage: AssetImage(
                  "img/"+images[index]
                ),
              ),
            );
            }
          ),
        )
      ],
    )
    );
  }
}
